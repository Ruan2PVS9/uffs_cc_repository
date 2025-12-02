#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "attribute.h"
#include "structures.h"

int findAttributes(int table_id, Attribute *attributes)
{
    FILE *file = fopen("att.dic", "rb");
    if (file == NULL)
    {
        printf("error: não foi possível abrir att.dic\n");
        return 0;
    }
    int num_attributes = 0;
    Attribute attr_temp;
    while (fread(&attr_temp, sizeof(Attribute), 1, file) == 1)
    {
        if (attr_temp.table_id == table_id)
        {
            attr_temp.name[19] = '\0';
            attributes[num_attributes] = attr_temp;
            num_attributes++;
            if (num_attributes >= MAX_ATT)
                break;
        }
    }
    fclose(file);
    return num_attributes;
}
