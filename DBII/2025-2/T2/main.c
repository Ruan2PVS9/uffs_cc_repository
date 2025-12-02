#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "structures.h"
#include "table.h"
#include "attribute.h"
#include "data.h"

int main(int argc, char *argv[])
{
    if (argc < 2)
    {
        printf("uso: %s <nome_da_tabela>\n", argv[0]);
        return 1;
    }

    char *table_name = argv[1];
    Table table;

    if (!findTable(table_name, &table))
    {
        printf("error: tabela '%s' não encontrada\n", table_name);
        return 1;
    }
    printf("tabela encontrada: '%s' -> '%s'\n", table.logical_name, table.physical_name);
    Attribute attributes[MAX_ATT];
    int num_attributes = findAttributes(table.id, attributes);
    if (num_attributes == 0)
    {
        printf("error: atributos não encontrados para a tabela '%s'\n", table_name);
        return 1;
    }
    char clean_file_name[MAX_NAME + 1];
    strncpy(clean_file_name, table.physical_name, MAX_NAME);
    clean_file_name[MAX_NAME] = '\0';
    processRecords(clean_file_name, attributes, num_attributes, table_name);

    return 0;
}
