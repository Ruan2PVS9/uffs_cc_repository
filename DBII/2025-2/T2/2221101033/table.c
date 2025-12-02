#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "table.h"
#include "structures.h"

int findTable(char *table_name, Table *table)
{
    FILE *file = fopen("table.dic", "rb");
    if (file == NULL)
    {
        printf("error: não foi possível abrir table.dic\n");
        return 0;
    }
    while (1)
    {
        if (fread(&table->id, sizeof(int), 1, file) != 1)
            break;
        if (fread(table->logical_name, 20, 1, file) != 1)
            break;
        if (fread(table->physical_name, 20, 1, file) != 1)
            break;
        table->logical_name[20] = '\0';
        table->physical_name[20] = '\0';
        char clean_name[MAX_NAME + 1] = {0};
        strncpy(clean_name, table->logical_name, MAX_NAME);
        if (strcmp(clean_name, table_name) == 0)
        {
            fclose(file);
            return 1;
        }
    }
    fclose(file);
    return 0;
}
