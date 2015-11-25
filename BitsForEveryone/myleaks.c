#include <stdio.h>
#include <stdlib.h>

char buf[80];

void flow(char *input)
{
	FILE *f = fopen("flag", "r");
	fscanf(f, "%s", input);
}
int main()
{
	char flowinput[80];
	int numread;
	int random[7];
	random[7] = 0x12345678;
	random[6] = 0x34567812;
	random[5] = 0x56781234;
	flow(flowinput);
	random[3] = 0x12345689;
	random[2] = 0x12121212;
	random[1] = 0x34343434;
	random[0] = 0x23423423;
	numread = read(0, buf, 80);
	buf[numread] = 0;
	printf(buf);
}