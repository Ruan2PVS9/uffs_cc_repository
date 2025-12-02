# Nome: RUAN PABLO VITKOSKI DE SOUZA
# Matricula: 2221101033
.data
head:			.word 0
nInserido:		.word 0
nRemovido:		.word 0
txt_nInserido:		.string " elementos foram inseridos\n"
txt_nRemovido:		.string " elementos foram removidos\n"
elementos0:		.string "A lista possui "
elementos1:		.string " elementos\n"
elementosN:		.string "nenhum elemento\n"
maior:			.string "O maior elemento é: "
menor:			.string "O menor elemento é: "
inserido:		.string "Indice: "
input1:			.string "\nDigite um número para inserir\n"
input2:			.string "\nDigite um índice para remover\n"
input3:			.string "\nDigite um número para remover\n"
menu:			.string  "\nMENU\n1 - Inserir\n2 - Remover por indice\n3 - Remover por valor\n4 - Imprimir lista\n5 - Estatísticas\n6 - Sair\n"
vazio:			.string "A lista está vazia\n"
.text
main:
	li a7, 4 		
	la a0, menu		
	ecall			
	li a7, 5		
	ecall			
	li t0, 1
	beq a0, t0, inserir	
	li t0, 2
	beq a0, t0, removerI		
	li t0, 3
	beq a0, t0, removerV		
	li t0, 4
	beq a0, t0, print		
	li t0, 5
	beq a0, t0, estatis		
	li t0, 6
	beq a0, t0, fim		
	j main
inserir:
	la a0, input1
	li a7, 4
	ecall
	li a7 5
	ecall
	mv a1, a0
	la a0, head
	jal insere_inteiro
	mv t0, a0
	la a0, inserido
	li a7, 4
	ecall
	mv a0, t0
	li a7, 1
	ecall
	j main
removerI:
	la a0, input2
	li a7, 4
	ecall
	li a7 5
	ecall
	mv a1, a0
	la a0, head
	jal remove_por_indice
	j main
removerV:
	la a0, input3
	li a7, 4
	ecall
	li a7 5
	ecall
	mv a1, a0
	la a0, head
	jal remove_por_valor
	j main
print:
	la a0, head
	jal imprime_lista
	j main
estatis:
	jal estatistica
	j main
fim:
	li a7, 10
	ecall

#  int insere_inteiro(int *head, int valor)		
insere_inteiro:
	add t3, zero, zero
	lw t0, (a0)	
	mv t1, a0
	addi t1, t1, -4	
	beqz t0, next
	lw t2, (t0)
	bgt t2, a1, next
for:
	addi, t3, t3, 1
	mv t1, t0		
	lw t0, 4(t1)		
	beqz  t0, next
	lw t2, (t0)
	bgt a1, t2, for

next:
	lw t2, nInserido
	addi t2, t2, 1
	sw t2, nInserido, t4
	li a7, 9 
	li a0, 8 
	ecall 	
	sw t0, 4(a0)
	sw a1, (a0)	
	sw a0, 4(t1) 
	mv a0, t3				
	ret			

#  int remove_por_indice(int *head, int indice)
remove_por_indice:
	ret
	
# função: int remove_por_valor(int *head, int valor)
remove_por_valor:
	ret
	
# void imprime_lista(int *head)	
imprime_lista:
	mv t0, a0
	li a7, 11
	li a0, 10 #codigo ASCII para pular linha \n
	ecall
	lw t0, (t0)
	beqz t0, lista_vazia
	lw a0, (t0)
	li a7, 1
	ecall
for_p:
	lw t0, 4(t0)
	beqz t0, fim_p
	li a7, 11
	li a0, 32 #codigo ASCII para espaço 
	ecall
	li a0, 166 # #codigo ASCII para ¦
	ecall
	li a0, 32 #codigo ASCII para espaço 
	ecall
	li a7, 1
	lw a0, (t0)
	ecall
	j for_p
fim_p:
	ret
	
lista_vazia:
	la a0, vazio
	li a7, 4
	ecall 
	ret

# void estatistica()					
estatistica:
	li a7, 1
	lw a0, nInserido
	mv t0, a0
	ecall
	li a7, 4
	la a0, txt_nInserido
	ecall
	
	li a7, 1
	lw a0, nRemovido
	mv t1, a0
	ecall
	li a7, 4
	la a0, txt_nRemovido
	ecall
	
	la a0, elementos0
	ecall
	sub a0, t0, t1
	beqz a0, sem_elementos
	li a7, 1
	ecall
	li a7, 4
	la a0, elementos1
	ecall
	
	la a0, menor
	ecall
	lw t0, head
	lw a0, (t0)
	li a7, 1
	ecall
	li a7, 11
	li a0, 10
	ecall
	
	la a0, maior
	li a7, 4
	ecall
forM:	lw t0, 4(t0)
	bnez t0, forM
achouM: mv a0, t0
	li a7, 1
	ecall
	li a7, 11
	li a0, 10
	ecall
	ret 
	
sem_elementos:
	la a0, elementosN
	ecall
	ret
