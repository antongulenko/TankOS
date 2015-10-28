
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

// This program executes one command and passes it input from stdin as parameters.
// If new lines appear on stdin while the command is still running, only the latest line
// will be used and intermediate lines will be dropped.

#define LINE_LEN 500

pthread_mutex_t lock;

char *last_line;
int last_line_len;
int line_updated;

char buf1[LINE_LEN];
char buf2[LINE_LEN];

void handle_input(char *line, int len) {
	if (len >= LINE_LEN) {
		fprintf(stderr, "Input line too long\n");
		exit(1);
	}

	pthread_mutex_lock(&lock);
	last_line_len = len;
	last_line = line;
	last_line[len] = 0;
	line_updated = 1;
	pthread_mutex_unlock(&lock);
}

void read_line(char *buf) {
	int len = 0;
    while (1) {
    	int c = fgetc(stdin);
	    if(c == EOF) {
	    	fprintf(stderr, "Stdin closed\n");
	        exit(1);
	    }
	    if (c == '\n') {
	    	handle_input(buf, len);
	    	len = 0;
	    } else if (len >= LINE_LEN) {
	    	fprintf(stderr, "Stdin line too long\n");
	    	exit(1);
	    } else {
	    	buf[len] = c;
	    	len++;
	    }
	}
}

void *read_function(void* param) {
	while (1) {
		read_line(buf1);
		read_line(buf2);
	}
}

int main(int argc, char **argv) {
	if (argc != 2) {
		fprintf(stderr, "Usage: buffered-execute <command>\n");
		exit(1);
	}
	char *command_name = argv[1];
	int command_len = strlen(command_name);
	char *command = malloc(command_len + 1 + LINE_LEN);
	if (!command) {
		fprintf(stderr, "Malloc failed\n");
		exit(1);
	}
	strcpy(command, command_name);
	command[command_len] = ' ';

	pthread_t read_thread;
	if (pthread_create(&read_thread, NULL, &read_function, NULL)) {
		fprintf(stderr, "Error creating thread\n");
		exit(1);
	}
	if (pthread_mutex_init(&lock, NULL)) {
        fprintf(stderr, "mutex init failed\n");
        exit(1);
    }
	while (1) {
		pthread_mutex_lock(&lock);
		if (!line_updated) {
			pthread_mutex_unlock(&lock);
			usleep(3*1000); // 3ms // TODO use condition/event
			continue;
		}
		memcpy(command + command_len + 1, last_line, last_line_len);
		command[command_len + 1 + last_line_len] = 0;
		line_updated = 0;
		pthread_mutex_unlock(&lock);

		int ret = system(command);
	    if (WIFSIGNALED(ret) && (WTERMSIG(ret) == SIGINT || WTERMSIG(ret) == SIGQUIT))
            exit(ret);
	}
}
