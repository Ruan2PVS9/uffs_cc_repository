// 9. ⊘ Fazer um programa que simule um campeonato com 4 times (A, B, C e D). Sera pedido o nome do
// primeiro time com os gols marcados e o nome do segundo time com os gols marcados. Este processo

// se repetir ́a at ́e que seja informado um valor diferente de A, B, C ou D para o primeiro time. Ao final
// dever ́a ser apresentado o n ́umero de pontos de cada time e o campe ̃ao. Caso houve empate na primeira
// coloca ̧c ̃ao informar que n ̃ao houve campe ̃ao. Calculo dos pontos: vit ́oria 3 pontos, empate 1 ponto e
// derrota 0 ponto. Exemplo:
// Time: A
// Gols: 2
// Time: B
// Gols: 1
// Time: C
// Gols: 2
// Time: A
// Gols: 4
// Time: X ← valor diferente de A, B, C ou D ent ̃ao finaliza
// Campe ̃ao: A
// A: 6 pontos
// B: 0 pontos
// C: 0 pontos
// D: 0 pontos

#include <stdio.h>
#include <string.h>


void empate(char *time1,char *time2,int *a,int *b,int *c, int *d){

    if (*time1 == 'A' || *time2 == 'A' ) {
        *a+=1;
    } 
    if (*time1 == 'B' || *time2 == 'B' ) {
        *b+=1;
    }
    if (*time1 == 'C' || *time2 == 'C' ) {
        *c+=1;
    }
    if (*time1 == 'D' || *time2 == 'D' ) {
        *d+=1;
    }

}

void time_ganhador(char *time,int *a,int *b,int *c, int *d){
    if (*time == 'A'){
        *a += 3;
    }else if (*time == 'B' ){
        *b+=3;
    }else if (*time == 'C'){
        *c+=3;
    }else{
        *d+=3;
    }
}

void def_cap(int *points_a,int *points_b,int *points_c,int *points_d){
    // char cap[ ] ="não tem campeão";
    char cap ;

    if (*points_a > *points_b && *points_a > *points_c && *points_a > *points_d){
        // strcpy(cap,"A\0");
        cap =  'A';
    } else if (*points_b > *points_c && *points_b > *points_d){
        // strcpy(cap,"B\0");
        cap =  'B';
    } else if (*points_c > *points_d){
        // strcpy(cap,"C\0");
        cap =  'C';
    } else {
        // strcpy(cap,"D\0");
        cap =  'D';
    }
    if(cap != 'A' && cap != 'B' && cap != 'C' && cap != 'D' ){
        printf("\nCampe˜ao: não tem campeão \nA: %d pontos \nB: %d pontos \nC: %d pontos \nD: %d pontos",cap,*points_a,*points_b,*points_c,*points_d);
    } else{
        printf("\nCampe˜ao: %c \nA: %d pontos \nB: %d pontos \nC: %d pontos \nD: %d pontos",cap,*points_a,*points_b,*points_c,*points_d);
    }

}

int main(){
    // int verdade=0
    int gols_1,gols_2;
    // char time1[1],time2[1];
    char ctime1='a',ctime2='b';
    int points_a = 0,points_b = 0,points_c = 0,points_d = 0;

    while (1) {
        printf("\nTime A\nTime B\nTime C\nTime D\ninformeo Time 1:");
        scanf("%c",&ctime1);
        fflush(stdin);
        if ( ctime1 != 'A' && ctime1 != 'B' && ctime1!='C' && ctime1 != 'D' ){
            break;
        }
        printf("Gols:");
        scanf("%d",&gols_1);

        printf("\nTime A\nTime B\nTime C\nTime D\ninformeo Time 2:");
        scanf("%c",&ctime2);
        fflush(stdin);

        if ( ctime2 != 'A' && ctime2 != 'B' && ctime2 != 'C' && ctime2 != 'D' ){
            break;
        }
        printf("Gols:");
        scanf("%d",&gols_2);

        if (gols_1 > gols_2 ) {
            time_ganhador(&ctime1,&points_a,&points_b,&points_c,&points_d);
        } else if (gols_2 > gols_1){
            time_ganhador(&ctime2,&points_a,&points_b,&points_c,&points_d);
        } else {
            empate(&ctime1,&ctime2,&points_a,&points_b,&points_c,&points_d);
        }
    }
    def_cap(&points_a,&points_b,&points_c,&points_d);

    return 0 ;
} 
