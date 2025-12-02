#ifndef STRUCTURES_H
#define STRUCTURES_H

#define MAX_ATT 10
#define MAX_NAME 20

typedef struct
{
    int id;
    char logical_name[MAX_NAME + 1];
    char physical_name[MAX_NAME + 1];
} Table;

typedef struct
{
    int table_id;
    char name[20];
    char type;
    char optionality;
    int size;
} Attribute;

#endif
