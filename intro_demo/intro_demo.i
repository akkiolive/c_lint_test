# 6 "intro_demo.h"
extern int rand(void);
extern void exit(int);
extern void abort(void);
extern void *malloc(int);
extern int printf(const char *, ...);
# 1 "useless_header.h"
extern struct {
    int i;
    int j;
    int k;
} hoge;
# 4 "intro_demo.c"
static int foo(void)
{
    int i = rand();

    if (i < 0) {
        unsigned * const p = (unsigned *) malloc(sizeof(unsigned));
        unsigned int ui;

        if (p != NULL) {
            *p = 0U;
        }


        ui = *p;  

        switch (i) {
        case -5:
            i = -1;
            ui = 0U;
            break;


        case 10:
            ui = 100U;
            break;
        default:
            ui = 0U;
            break;
        }
# 41 "intro_demo.c"
        if (i < ui) {

            exit(0);
        }
    }
    else {

        unsigned j = 10 / i;

        if (i < 1) {
            j = 3 / i;  
        }

        if (i <= 0x0FFFFFFF) {
            i <<= 3;
        }
        else {
            i = i << 1;  
        }


        abort();
    }



    if (i == -5) {
        abort();
    }

    return i;
}

static inline int bar(void) { return 0; }

int main(void) { return foo(); }
