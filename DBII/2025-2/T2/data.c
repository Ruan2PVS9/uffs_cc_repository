#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "data.h"
#include "structures.h"

void printHeader(Attribute *attributes, int num_attributes)
{
    for (int i = 0; i < num_attributes; i++)
    {
        printf("%-20s", attributes[i].name);
    }
    printf("\n");
}

int readRecord(FILE *file, Attribute *attributes, int num_attributes)
{
    char buffer[256];
    int int_value;
    double double_value;
    float float_value;
    int read_fields = 0;
    for (int i = 0; i < num_attributes; i++)
    {
        switch (attributes[i].type)
        {
        case 'S':
            if (fread(buffer, attributes[i].size, 1, file) == 1)
            {
                printf("%-20.*s", attributes[i].size, buffer);
                read_fields++;
            }
            break;
        case 'I':
            if (fread(&int_value, sizeof(int), 1, file) == 1)
            {
                printf("%-20d", int_value);
                read_fields++;
            }
            break;
        case 'D':
            if (fread(&double_value, sizeof(double), 1, file) == 1)
            {
                printf("%-20.2lf", double_value);
                read_fields++;
            }
            break;
        case 'F':
            if (attributes[i].size == 4)
            {
                if (fread(&float_value, sizeof(float), 1, file) == 1)
                {
                    printf("%-20.2f", float_value);
                    read_fields++;
                }
            }
            else
            {
                if (fread(&double_value, sizeof(double), 1, file) == 1)
                {
                    printf("%-20.2lf", double_value);
                    read_fields++;
                }
            }
            break;
        }
    }
    return read_fields;
}

void processRecords(char *file_name, Attribute *attributes, int num_attributes, char *table_name)
{
    FILE *file = fopen(file_name, "rb");
    if (file == NULL)
    {
        printf("error: não foi possível abrir o arquivo de dados '%s'\n", file_name);
        return;
    }
    printf("\n=== select * from %s ===\n", table_name);
    printHeader(attributes, num_attributes);
    while (1)
    {
        int read_fields = readRecord(file, attributes, num_attributes);
        if (read_fields < num_attributes)
            break;
        printf("\n");
    }
    fclose(file);
}
