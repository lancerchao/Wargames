#include <stdio.h>
int main()
{
	FILE *fp = fopen("tier3_private.pem", "r");
	printf("%s\n", fp.readline());
}
