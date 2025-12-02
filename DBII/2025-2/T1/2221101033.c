#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_ATT 10
#define MAX_ATT_NAME 16

typedef struct
{
    char name[MAX_ATT_NAME];
    char type;
    int size;
} Atributo;

int readHeader(FILE *arquivo, Atributo *atributos)
{
    int num_atributos = 0;

    while (num_atributos < MAX_ATT)
    {
        long pos_atual = ftell(arquivo);
        fread(atributos[num_atributos].name, 15, 1, arquivo);
        atributos[num_atributos].name[15] = '\0';

        if (atributos[num_atributos].name[0] == '#')
        {
            fseek(arquivo, pos_atual + 1, SEEK_SET); // Pula o '#'
            break;
        }

        fread(&atributos[num_atributos].type, sizeof(char), 1, arquivo);
        fread(&atributos[num_atributos].size, sizeof(int), 1, arquivo);
        num_atributos++;
    }

    return num_atributos;
}

void printHeader(Atributo *atributos, int num_atributos)
{
    for (int i = 0; i < num_atributos; i++)
    {
        printf("%-15s", atributos[i].name);
    }
    printf("\n");
}

int readRecord(FILE *arquivo, Atributo *atributos, int num_atributos)
{
    char buffer[256];
    int valor_int;
    float valor_float;
    int dados_lidos = 0;

    for (int i = 0; i < num_atributos; i++)
    {
        switch (atributos[i].type)
        {
        case 'S':
        case 'C':
            if (fread(buffer, atributos[i].size, 1, arquivo) == 1)
            {
                printf("%-15.*s", atributos[i].size, buffer);
                dados_lidos++;
            }
            break;
        case 'I':
            if (fread(&valor_int, sizeof(int), 1, arquivo) == 1)
            {
                printf("%-15d", valor_int);
                dados_lidos++;
            }
            break;
        case 'F':
            if (fread(&valor_float, sizeof(float), 1, arquivo) == 1)
            {
                printf("%-15.2f", valor_float);
                dados_lidos++;
            }
            break;
        }
    }

    return dados_lidos;
}

void processRecords(FILE *file, Atributo *attributes, int num_attributes)
{
    while (1)
    {
        int read_data = readRecord(file, attributes, num_attributes);
        if (read_data < num_attributes)
            break;
        printf("\n");
    }
}

int main(int argc, char *argv[])
{
    if (argc < 2)
    {
        printf("Informe o arquivo para leitura: ./executavel <arquivoparaler>\n");
        return 0;
    }

    FILE *arquivo = fopen(argv[1], "rb");
    if (arquivo == NULL)
    {
        printf("Erro: Arquivo não foi aberto '%s'\n", argv[1]);
        return 1;
    }

    Atributo atributos[MAX_ATT];

    int num_atributos = readHeader(arquivo, atributos);

    printHeader(atributos, num_atributos);

    processRecords(arquivo, atributos, num_atributos);

    fclose(arquivo);
    return 0;
}
