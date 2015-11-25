#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

char *createNode(int arg1)
{
	void *dest;
	char src[20];
	dest = malloc(28);
	printf("Data: ");
	*dest = arg1;
	fflush(0);
	scanf("%16s", src);
	strcpy(dest+4, src);
	return dest;
}
int main()
{

}