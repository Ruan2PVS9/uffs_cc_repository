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

int main(){
    int time1,time2,verdade=0,gols_1,gols_2;
    int points_a = 0,points_b = 0,points_c = 0,points_d = 0;

    while (1) {
        printf("1-Time A\n2-Time B\n3-Time C\n4-Time D\nOutro numero- Sair\ninformeo Time 1:");
        scanf("%d",&time1);
        if ( time1 !=1 && time1 != 2 && time1 !=3 && time1 !=4){
            break;
        }
        printf("Gols:");
        scanf("%d",&gols_1);

        printf("1-Time A\n2-Time B\n3-Time C\n4-Time D\ninformeo Time 2:");
        scanf("%d",&time2);
        if ( time2 !=1 && time2 != 2 && time2 !=3 && time2 !=4){
            break;
        }
        printf("Gols:");
        scanf("%d",&gols_2);
        if (gols_1 > gols_2 ) {
            time_ganhador(&time1,&points_a,&points_b,&points_c,&points_d);
        } else if (gols_2 > gols_1){
            time_ganhador(&time2,&points_a,&points_b,&points_c,&points_d);
        } else {
            empate(&time1,&time2,&points_a,&points_b,&points_c,&points_d);
        }
    }
    def_cap(&points_a,&points_b,&points_c,&points_d);

    return 0 ;
} 

void empate(int *time1,int *time2,int *a,int *b,int *c, int *d){
    printf("\n%d",*time1);
    printf("\n%d",*time2);
    printf("\n%d-%d-%d-%d\n",*a,*b,*c,*d);

    if (*time1 == 1 || *time2 ==1 ) {
        *a+=1;
    } 
    if (*time1 == 2 || *time2 == 2 ) {
        *b+=1;
    }
    if (*time1 == 3 || *time2 == 3 ) {
        *c+=1;
    }
    if (*time1 == 4 || *time2 == 4 ) {
        *d+=1;
    }

}

void time_ganhador(int *time,int *a,int *b,int *c, int *d){
    printf("\n%d",*time);
    printf("\n%d-%d-%d-%d\n",*a,*b,*c,*d);
    if (*time == 1){
        *a += 3;
    }else if (*time == 2 ){
        *b+=3;
    }else if (*time == 3){
        *c+=3;
    }else{
        *d+=3;
    }
}

void def_cap(int *points_a,int *points_b,int *points_c,int *points_d){
    char cap[ ] ="não tem campeão";
    printf("\n%d-%d-%d-%d",*points_a,*points_b,*points_c,*points_d);

    if (*points_a > *points_b && *points_a > *points_c && *points_a > *points_d){
        strcpy(cap,"A\0");
    } else if (*points_b > *points_c && *points_b > *points_d){
        strcpy(cap,"B\0");
    } else if (*points_c > *points_d){
        strcpy(cap,"C\0");
    } else {
        strcpy(cap,"D\0");
    }
    
    printf("\nCampe˜ao: %s \nA: %d pontos \nB: %d pontos \nC: %d pontos \nD: %d pontos",cap,*points_a,*points_b,*points_c,*points_d);


}