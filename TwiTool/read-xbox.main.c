#include <sys/ioctl.h>
#include <sys/time.h>
#include <sys/types.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>

#include <linux/joystick.h>

#define NAME_LENGTH 128

void handle(int left, int right) {
	long lleft = (long) left;
	long lright = (long) right;
	lleft *= -2;
	lright *= -2;
	printf("%ld %ld\n", lleft, lright);
	fflush(stdout);
}

int main (int argc, char **argv)
{
	int fd;
	unsigned char axes = 2;
	unsigned char buttons = 2;
	int version = 0x000800;
	char name[NAME_LENGTH] = "Unknown";

	if (argc != 4) {
		fprintf(stderr, "Usage: read-xbox <js-file> <left-axis> <right-axis>\n");
		exit(1);
	}
	int AXIS_LEFT = atoi(argv[2]);
	int AXIS_RIGHT = atoi(argv[3]);
	if (AXIS_LEFT == AXIS_RIGHT || AXIS_LEFT < 0 || AXIS_RIGHT < 0) {
		fprintf(stderr, "Illegal axis values (must be different and >=0). Got %i and %i\n", AXIS_LEFT, AXIS_RIGHT);
		exit(1);
	}	
	fprintf(stderr, "Using axis %i (left) and %i (right)\n", AXIS_LEFT, AXIS_RIGHT);

	if ((fd = open(argv[1], O_RDONLY)) < 0) {
		perror("read-xbox");
		exit(1);
	}

	ioctl(fd, JSIOCGVERSION, &version);
	ioctl(fd, JSIOCGAXES, &axes);
	ioctl(fd, JSIOCGBUTTONS, &buttons);
	ioctl(fd, JSIOCGNAME(NAME_LENGTH), name);

	fprintf(stderr, "Joystick (%s) has %d axes and %d buttons. Driver version is %d.%d.%d.\n",
		name, axes, buttons, version >> 16, (version >> 8) & 0xff, version & 0xff);

	if (version < 0x010000) {
		fprintf(stderr, "Using old joystick interface\n");
		struct JS_DATA_TYPE js;
		while (1) {
			if (read(fd, &js, JS_RETURN) != JS_RETURN) {
				perror("\nread-xbox: error reading");
				exit(1);
			}

			//printf("Axes: X:%3d Y:%3d Buttons: A:%s B:%s\r",
			//	js.x, js.y, (js.buttons & 1) ? "on " : "off", (js.buttons & 2) ? "on " : "off");
			//fflush(stdout);

			handle(js.x, js.y);
			usleep(10000);
		}
	} else {
		int *axis;
		int *button;
		struct js_event js;

		axis = calloc(axes, sizeof(int));
		button = calloc(buttons, sizeof(char));

		while (1) {
			if (read(fd, &js, sizeof(struct js_event)) != sizeof(struct js_event)) {
				perror("\nread-xbox: error reading");
				exit (1);
			}

			switch(js.type & ~JS_EVENT_INIT) {
			case JS_EVENT_BUTTON:
				button[js.number] = js.value;
				break;
			case JS_EVENT_AXIS:
				axis[js.number] = js.value;
				if (js.number == AXIS_LEFT || js.number == AXIS_RIGHT) {
					handle(axis[AXIS_LEFT], axis[AXIS_RIGHT]);
				}
				break;
			}

			// printf("\r");

			// if (axes) {
			// 	printf("Axes: ");
			// 	for (i = 0; i < axes; i++)
			// 		printf("%2d:%6d ", i, axis[i]);
			// }

			// if (buttons) {
			// 	printf("Buttons: ");
			// 	for (i = 0; i < buttons; i++)
			// 		printf("%2d:%s ", i, button[i] ? "on " : "off");
			// }

			// fflush(stdout);
		}
	}

	return -1;
}
