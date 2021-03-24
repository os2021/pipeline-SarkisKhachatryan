#include <stdio.h> 

int main(void) {
    int c;    
    for ( ; ; ) {
        c = getchar();
        if (c == EOF) break;
        if ((c >= 65) && (c < 91)) {
            c += 32;
        }
    putchar(c);
    }
    return 0; 
}
