
#include <sys/ioctl.h>
#include <sys/time.h>
#include <sys/types.h>
#include <stdlib.h>
#include <fcntl.h>
#include <signal.h>
#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>
#include <pthread.h>

#define THRESHOLD 10000
#define DIFF_THRESHOLD 1000

// Maximum length of a line of input
#define LINE_LEN 500

long int left;
long int left_updated = 0;
long int right;
long int right_updated = 0;

// Lock synchronizing cond and value updates
pthread_mutex_t lock;

// Condition signalling updated values
pthread_cond_t cond = PTHREAD_COND_INITIALIZER;

void handle_values(long int new_left, long int new_right) {
	if (abs(new_right) < THRESHOLD) {
		new_right = 0;
	}
	if (abs(new_left) < THRESHOLD) {
		new_left = 0;
	}
	int update_right = abs(new_right - right) > DIFF_THRESHOLD;
	int update_left = abs(new_left - left) > DIFF_THRESHOLD;

	pthread_mutex_lock(&lock);
	if (update_left) {
		left = new_left;
		left_updated = 1;
	}
	if (update_right) {
		right = new_right;
		right_updated = 1;
	}
	if (update_left || update_right) {
		pthread_cond_broadcast(&cond);
	}
	pthread_mutex_unlock(&lock);
}

void handle_input(char *line) {
	char *end;
	char *expected_end = line + strlen(line);
	long int new_left = strtol(line, &end, 10);
	end++; // Skip 1 space
	long int new_right = strtol(end, &end, 10);
	if (end != expected_end) {
		fprintf(stderr, "Failed to parse input line: %s\n", line);
		return;
	}
	handle_values(new_left, new_right);
}

int read_line(char *buf, int buf_len) {
	int len = 0;
    while (1) {
    	int c = fgetc(stdin);
	    if(c == EOF) {
	    	fprintf(stderr, "Stdin closed\n");
	        exit(1);
	    }
	    if (c == '\n') {
	    	buf[len] = 0;
	    	return len;
	    } else if (len >= buf_len - 1) {
	    	fprintf(stderr, "Stdin line too long\n");
	    	while (fgetc(stdin) != '\n') ;
	    	return 0;
	    } else {
	    	buf[len] = c;
	    	len++;
	    }
	}
}

void *read_input_thread(void* param) {
	char buf[LINE_LEN];
	while (1) {
		if (read_line(buf, LINE_LEN) > 0)
			handle_input(buf);
	}
}

void set_motor(char *command, char *param, long int value) {
	char buf[256];
	snprintf(buf, 128, "%s %s %ld", command, param, value);
	int ret = system(buf);
    if (WIFSIGNALED(ret) && (WTERMSIG(ret) == SIGINT || WTERMSIG(ret) == SIGQUIT))
        exit(ret);
}

int main(int argc, char **argv) {
	if (argc != 2) {
		fprintf(stderr, "Usage: control-motors <set-motor-command>\n");
		exit(1);
	}
	char *command_name = argv[1];

	pthread_t read_thread;
	if (pthread_create(&read_thread, NULL, &read_input_thread, NULL)) {
		fprintf(stderr, "Error creating thread\n");
		exit(1);
	}
	if (pthread_mutex_init(&lock, NULL)) {
        fprintf(stderr, "mutex init failed\n");
        exit(1);
    }
	while (1) {
		pthread_mutex_lock(&lock);
		if (!left_updated && !right_updated)
			pthread_cond_wait(&cond, &lock);

		// Make a copy of the global state and release the mutex
		long int myleft = left;
		long int myleft_updated = left_updated;
		long int myright = right;
		long int myright_updated = right_updated;
		right_updated = 0;
		left_updated = 0;
		pthread_mutex_unlock(&lock);

		if (myright_updated) {
			set_motor(command_name, "-r", myright);
		}
		if (myleft_updated) {
			set_motor(command_name, "-l", myleft);
		}
	}
}
