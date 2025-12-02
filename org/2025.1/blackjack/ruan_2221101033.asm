    .data
cartas_num:	 .word  1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13
cartas_qtd:  .word  0, 0, 0, 0, 0, 0, 0, 0, 0,  0,  0,  0,  0
baralho_tamanho: .word 52
m_boas_vindas:  .string "\nBem-vindo ao Blackjack!"
m_info_cartas_baralho:  .string  "\nTotal de Cartas: "
m_info_postos: 	.string "\nPontuação: "
postos_jogador:  .word 0
postos_dealer:  .word 0
m_info_postos_jogador:  .string "\n	 Jogador: "
m_info_postos_dealer:  .string "\n  Dealer: "
m_menu_inicial:	 .string "\nDeseja jogar? (1 - Sim, 2 - Não): "
m_opcao_invalida:  .string "\nOpção inválida! Tente novamente."
m_fazer:  .string "\nO que você deseja fazer? (1 - Hit, 2 - Stand): "
m_info_jogador_recebe:  .string "\n	 O Jogador recebe: "
m_info_dealer_recebe:  .string "\n	 O Dealer recebe: "
m_info_dealer_revela:  .string "\n  O Dealer revela: "
m_dealer_pede_carta:  .string "\nO dealer deve continuar pedindo cartas..."
m_dealer_tem:  .string "\nO dealer tem : "
m_jogador_tem:  .string "\nO jogador tem: "
m_dealer_perde:  .string "\nO dealer estourou! Você venceu!"
m_jogador_perde:  .string "\nO jogador estourou! O dealer venceu!"
m_empate:  .string "\nEmpate! Ninguém venceu!"
pula_linha:  .string "\n"
# maximo de cartas possiveis na mao 
# 4 cartas de 2 → 8
# 4 ases → 4
# 3 cartas de 3 → 9
# → Total: 8 + 4 + 9 = 21
# 4 +4+3 = 11 cartas
mao_jodador:  .word 0,0,0,0,0,0,0,0,0,0,0
mao_dealer:  .word 	0,0,0,0,0,0,0,0,0,0,0

	.text
main: 
	la       a0, m_boas_vindas // Imprime mensagem de boas-vindas
	li       a7, 4
	ecall
	j info_geral // Chama a função info_geral

embaralhar_ditribuir:


info_geral:
	la 	 a0, pula_linha // Imprime uma linha em branco
	li       a7, 4
	ecall

	la       a0, m_info_cartas_baralho	// Imprime informação sobre o baralho	
	ecall

	la	   a0, baralho_tamanho 	// Carrega o tamanho do baralho
	ecall

	la	   a0, m_info_postos	// Imprime informação sobre os postos
	ecall

	la       a0, m_info_postos_jogador // Imprime informação sobre o jogador
	ecall
	la	   a1, postos_jogador // Carrega o valor dos postos do jogador
	ecall

	la	   a0, m_info_postos_dealer // Imprime informação sobre o dealer
	ecall
	la	   a1, postos_dealer // Carrega o valor dos postos do dealer
	ecall

	
menu:
	la       a0, m_menu_inicial // Imprime o menu inicial Deseja jogar? (1 - Sim, 2 - Não):
	li       a7, 4
	ecall

	li       a7, 5 // Lê a opção do usuário
	ecall

	beq      a0, 2, fim
	beq      a0, 1, rodada

	la	     a0, m_opcao_invalida // Imprime mensagem de opção inválida
	li       a7, 4
	ecall
	j       menu  

rodada:
	la       a0, pula_linha // Imprime uma linha em branco
	li       a7, 4
	ecall

	// Inicializa o baralho
	la       a0, cartas_num // Carrega o endereço do vetor de números das cartas
	la       a1, cartas_qtd // Carrega o endereço do vetor de quantidade de cartas
	li       t0, 0 // Inicializa o índice do baralho
	 
        
fim:
    li       a7, 10
	ecall    
