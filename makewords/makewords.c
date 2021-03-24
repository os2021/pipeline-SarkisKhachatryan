#include <stdio.h>

int main(void) {
    int c;
    for ( ; ; ) {
        c = getchar();
        if (c == EOF) {
            putchar('\n');
            break;
        } else if (c == 32) {
            putchar('\n');
        } else if ((c >= 33) && (c < 65)) {
            continue;
        } else {
            putchar(c);
        }        
    }
    return 0;
}

