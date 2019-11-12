#include <stdio.h>
#include <stdlib.h>

struct POINT {
    int x;
    int y;
};

int get_x(struct POINT *pnt)
{
    return pnt->x;
}

int get_y(struct POINT *pnt)
{
    return pnt->y;
}

void set_x(struct POINT *pnt, int val)
{
    pnt->x = val;
}

void set_y(struct POINT *pnt, int val)
{
    pnt->y = val;
}

void print_point(struct POINT *pnt)
{
    printf("The point is (%d, %d)\n",
        get_x(pnt), get_y(pnt));
}

int resource_leak()
{
    FILE *fp=fopen("c:\\some\file", "r");

    if (fp == NULL) {
        return 1;
    }

    return 0;
}

int memory_leak()
{
    struct POINT *p = malloc(sizeof(struct POINT));

    if (p == NULL) {
        return (-2);
    }

    return -1;
}

void dead_store(struct POINT *pnt)
{
    int new_x = 9;
    new_x = get_y(pnt);
    set_x(pnt, new_x);
}

int null_dereference()
{
    struct POINT *p = malloc(sizeof(struct POINT));

    get_x(p);
    free(p);

    return 0;
}

int main(void)
{
    struct POINT *pnt = malloc(sizeof(struct POINT));

    if (pnt != NULL)
    {
        set_x(pnt, 6);
        set_y(pnt, 7);

        print_point(pnt);

        free(pnt);
    }

    return 0;
}
