// 10. ⊘ Um professor gostaria de ter um programa para calcular a m ́edia final de seus alunos. Para isso ele
// informa a matr ́ıcula e as 10 notas que o alunos teve durante o semestre. Ap ́os informar as 10 notas, o
// programa imprime a mar ́ıcula do aluno e a m ́edia que obteve (m ́edia aritm ́etica simples). Quando o
// professor digitar 0 o programa finaliza e apresenta a m ́edia geral da turma. Proibido colocar 10 input
// para pedir as notas. Exemplo:
// Matr ́ıcula: 22010
// Nota 1: 4
// Nota 2: 6
// Nota 3: 6
// Nota 4: 6
// Nota 5: 8
// Nota 6: 4
// Nota 7: 7
// Nota 8: 8
// Nota 9: 6
// Nota 10: 5
// 22010, m ́edia: 6.6
// Matr ́ıcula: 0
// M ́edia geral da turma: 6.6


#include <stdio.h>

int main(){
    long matricula;
    float soma_turma=0,soma_aluno=0,nota;
    int count_turma=0;
    printf("\nMatr ́ıcula:");
    scanf("%ld",&matricula);
    while (matricula != 0){
        soma_aluno=0;
        for (int i = 0; i < 10; i++){
            printf("Nota %d: ", i+1);
            scanf("%f",&nota);
            soma_aluno +=nota;
        }
        printf("\n%ld, m ́edia: %.1f",matricula,(soma_aluno/10));
        count_turma++;
        soma_turma+=(soma_aluno/10);
        printf("\nMatr ́ıcula:");
        scanf("%ld",&matricula);
    }
    printf("M ́edia geral da turma: %.1f",(soma_turma/count_turma));

    return 0 ;
}