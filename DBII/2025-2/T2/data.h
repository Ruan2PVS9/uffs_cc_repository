#ifndef DATA_H
#define DATA_H

#include <stdio.h>
#include "structures.h"

void printHeader(Attribute *attributes, int num_attributes);
int readRecord(FILE *file, Attribute *attributes, int num_attributes);
void processRecords(char *file_name, Attribute *attributes, int num_attributes, char *table_name);

#endif
