#ifdef WIN32
#include <windows.h>
#endif

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

char* doTrans(char *);

int main(int argc, char *argv[]) {
    size_t  len = sizeof("/first/test/path");
    char    *a = (char *)malloc(len);
    char    *b;

    strcpy(a, "/first/test/path");

    b = doTrans(a);

    printf("%s -> %s\n", a, b);

    free(a);
    free(b);

    return 0;
}
