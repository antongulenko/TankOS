/*
 * Created: 19.07.2015 11:28:28
 *  Author: anton
 */ 

#ifndef BUFFER_STDOUT_H_
#define BUFFER_STDOUT_H_

#ifndef STDOUT_BUFFER_SIZE
#define STDOUT_BUFFER_SIZE 1024
#endif

extern FILE stdout_buffer_stream;
int buffer_stdout_putchar(char c, FILE *f);

#endif /* BUFFER_STDOUT_H_ */