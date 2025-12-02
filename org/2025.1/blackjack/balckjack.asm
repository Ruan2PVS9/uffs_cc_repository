.data
m_boas_vindas:  .string "\nBem-vindo ao Blackjack!"
m_info_cartas_baralho:  .string  "\nTotal de Cartas: "
m_info_pontos: 	.string "\nPontuacao: "
m_info_pontos_jogador:  .string "\n\tJogador: "
m_info_pontos_dealer:  .string "\n\tDealer: "
m_menu_inicial:	 .string "\nDeseja jogar? (1 - Sim, 2 - Nao): "
m_opcao_invalida:  .string "\nOpcao invalida! Tente novamente."
m_fazer:  .string "\nO que voce deseja fazer? (1 - Hit, 2 - Stand): "
m_info_mais_cartas: .string " + "
m_info_igual_cartas: .string " = "
m_info_jogador_recebe:  .string "\nO Jogador recebe: "
m_info_dealer_recebe:  .string "\nO Dealer recebe: "
m_info_dealer_revela:  .string "\nO Dealer revela: "
m_dealer_pede_carta:  .string "\nO dealer deve continuar pedindo cartas..."
m_dealer_tem:  .string "\nO dealer tem : "
m_jogador_tem:  .string "\nO jogador tem: "
m_dealer_perde:  .string "\nO dealer estourou! Voce venceu!"
m_jogador_perde:  .string "\nO jogador estourou! O dealer venceu!"
m_empate:  .string "\nEmpate! Ninguem venceu!"
pula_linha:  .string "\n"
m_e:    .string " e "
m_e_oculta:    .string " e  uma carta oculta"
m_teste_array:  .string "\nArray: "
# cartas_rotulos:	   A, 2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K
#cartas_num:	    .word  1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13
cartas_usos:    .word  0, 0, 0, 0, 0, 0, 0, 0, 0,  0, 0, 0, 0
baralho_tamanho: .word 52
# 52 - 40 = 12 cartas restantes
# Maximo de cartas possiveis na mao 
# 4 cartas de 'A' ? 4 pontos
# 4 cartas de '2' ? 8 pontos
# 3 cartas de '3' ? 9 pontos
# Soma pontos: 8 + 4 + 9 = 21 pontos
# Soma cartas: 4 + 4 + 3 = 11 cartas
mao_jogador:  .word 0,0,0,0,0,0,0,0,0,0,0
mao_dealer:  .word 	0,0,0,0,0,0,0,0,0,0,0
vitorias_jogador:  .word 0
vitorias_dealer:  .word 0
pontos_jogador:  .word 0
pontos_dealer:  .word 0

# baralho_usado:    .space 52
# mao_jogador:      .space 44
# mao_dealer:       .space 44
# max_cartas_mao:     .word 11

.text
main: 
    la      a0, m_boas_vindas # Exibe mensagem: "\nBem-vindo ao Blackjack!"
    li      a7, 4
    ecall

# ================================================================================= #
# Função para exibir mensagens informações das pontuações
inicia_info:
    la      t0, baralho_tamanho 	# Carrega endereco do tamanho do baralho
    lw      s11, 0(t0) 
    la      t0, pontos_jogador 	# Carrega endereco dos pontos do jogador    
    lw      s5, 0(t0) 	# Carrega endereco dos pontos do jogador
    la      t0, pontos_dealer 	# Carrega endereco dos pontos do dealer
    lw      s6, 0(t0) 	# Carrega endereco dos pontos
    la      t0, vitorias_jogador 	# Carrega endereco das vitorias do jogador
    lw      s7, 0(t0) 	# Carrega endereco das vitorias do jogador
    la      t0, vitorias_dealer 	# Carrega endereco das vitorias do dealer
    lw      s8, 0(t0)   # Carrega endereco das vitorias do dealer


info_geral:
    li      a7, 4
    la      a0, pula_linha # Exibe mensagem: "\n"
    ecall

    la      a0, m_info_cartas_baralho	# Exibe mensagem: "\nTotal de Cartas: "
    ecall
    mv      a0, s11            # Carrega o valor do tamanho do baralho
    li      a7, 1              # Exibe o tamanho do baralho
    ecall

    li      a7, 4
    la      a0, m_info_pontos # Exibe mensagem: "\nPontuacao: "
    ecall
    la      a0, m_info_pontos_jogador # Exibe mensagem: "\n\tJogador: "
    ecall

    li      a7, 1
    mv      a0, s7 	# Carrega endereco dos pontos do jogador
    ecall

    li      a7, 4
    la      a0, m_info_pontos_dealer # Exibe mensagem: "\n\tDealer: "
    ecall

    li      a7, 1
    mv      a0, s8 	# Carrega endereco dos pontos do dealer
    ecall

# ================================================================================= #
# Loop de menu principal - Verifica se deve encerrar programa ou inicar novo rodada
menu:
    la      a0, m_menu_inicial # Imprime o menu inicial Deseja jogar? (1 - Sim, 2 - Nao):
    li      a7, 4
    ecall

    li      a7, 5 # Le a opcao do usuario
    ecall

    li      t0, 2
    beq     a0, t0, fim

    li      t0, 1
    beq     a0, t0, nova_rodada

    la      a0, m_opcao_invalida # Exibe mensagem: "\nOpcao invalida! Tente novamente."
    li      a7, 4
    ecall
    j       menu

# ================================================================================= #
# Função reiniciar baralho e mao dos jogadores - inicialização de cartas
# Entrada:
#     a0: baralho
#     a1: mao do jogador
#     a2: mao do dealer
# Saída:
#     a0: baralho zerado
#     a1: mao do jogador zerada
#     a2: mao do dealer zerada
inicio_embaralhar:
    li      t0, 13  # t3 = 13
    li      t1, 11  # t3 = 11
zerar_baralho:
    li      t3,12
    bge     s11, t3, zerar_maos # Se o tamanho do baralho for maior que 12, chama zerar_maos
    sw      zero, 0(a0)    # uso da carta = 0

    # Atualiza controladores
    addi    a0, a0, 4
    addi    t0, t0, -1
    bnez    t0, zerar_baralho
    li      s11, 52  # t1 = 11 (tamanho da mao)
zerar_maos:
    sw      zero, 0(a1)    # carta jogador = 0 (nenhuma)
    sw      zero, 0(a2)    # carta dealer = 0 (nenhuma)

    # Atualiza controladores
    addi    a1, a1, 4
    addi    a2, a2, 4
    addi    t1, t1, -1
    bnez    t1, zerar_maos

    ret

# ================================================================================= #
# Função para gerar nova carta
# Entrada:
#     a0: baralho (cartas utilizadas)
#     a1: mao do jogador (inicial)
#     a2: mao do dealer (inicial)
# Saída:
#     a0: nova carta obtida no baralho [0 a 12]


# ================================================================================= #
# Função para gerar nova carta
# Entrada:
#     a0: baralho (cartas utilizadas)
# Saída:
#     a0: nova carta obtida no baralho [0 a 12]
gerar_nova_carta:
    # Salvando parametros de entrada
    mv      t0, a0  # t0 = baralho

nova_carta:
    ### Gerando carta aleatória
    li      a0, 51   # seed utilizada para gerar numero random 
    li      a1, 13  # Define limite [0 a 12] (13 opções de cartas)
    li      a7, 42
    ecall
    mv      t1, a0  # t1 = nova carta

    # Obtendo quantidade de usos da mesma carta
    slli    t1, t1, 2
    add     t0, t0, t1  # Calculando indce da carta no baralho
    lw      t2, 0(t0)   # t2 = usos

    # Verifica se a carta é valida
    li      t4, 4
    beq     t4, t2, nova_carta # Nova carta se nao houver mais usos

    ### Atualiza contagem de usos
    addi    t2, t2, 1  # Incrementa uso da carta
    addi    a0, a0, 1  # Volta para o endereço do baralho
    mv      a0, a0  # a0 = nova carta (valor da carta)
    addi    s11,s11, -1  # diminuindo o tamanho do baralho

    sw      t2, 0(t0)  # Salva uso da carta no endereço do baralho

    ret


# ================================================================================= #
# Função para inserir nova carta e atualizar o slot
# Entrada:
#     a0: slot jogador/dealer
#     a1: nova carta (inteiro)
# Saída:
#     a0: slot jogador/dealer (novo)
inserir_nova_carta:
    sw      a1, 0(a0)
    addi    a0, a0, 4
    ret

# ================================================================================= #
# Função para iterar e exibir um array
# Entrada:
#     a0: mao
#     a1: pontos
# Saída:
#     a0: pontos somados
inicio_exibe_mao:
    mv      t0, a0   # Salvando endereço inicial do array
    li      t2, 0    # Inicializando contador de pontos
exibe_mao:
    lw      a0, 0(t0)

valida_carta:
    li      t3, 1    # Inicializando contador de pontos
    beq     a0, t3, soma_onze# Se a carta for diferente de 1, soma os pontos
    j soma_pontos_normal # Se a carta for 1, chama soma_onze
soma_onze:
    addi    t2, t2, 11 # Se a carta for 1 (A), soma 11 pontos
    li      t3, 21 
    blt     t2, t3, soma_um # Se a soma for menor que 21, continua
    j soma_fim
soma_um:
    addi    t2, t2, -10 # Se a soma for maior ou igual a 21, subtrai 10 pontos (A vale 1)
    j soma_fim
soma_pontos_normal:
    li      t3, 10   # Inicializando contador de pontos
    bge     a0, t3,  continua_figura
    add     t2, t2, a0  # Soma os pontos da carta atual
    j soma_fim
continua_figura:
    addi     t2, t2, 10  # Soma os pontos da carta atual
soma_fim:

    li      a7, 1
    ecall

    addi    t0, t0, 4

    lw      t1, 0(t0) # Carrega o próximo valor do array
    beqz    t1, fim_exibe_mao # Se o tamanho for zero, sai do loop
    
    la      a0, m_info_mais_cartas
    li      a7, 4
    ecall

    j       exibe_mao
fim_exibe_mao:
    la      a0, m_info_igual_cartas
    li      a7, 4
    ecall
    mv      a0, t2  # Exibe a soma dos pontos
    li      a7, 1
    ecall
    mv     a0, t2  # Retorna a soma dos pontos

    ret

# ================================================================================= #
# Função para calcular a pontuação do jogador
valida_pontuacao_jogador:
    li      t0, 22  # t0 = limite de pontos (21)
    blt     s5, t0,continua_pontuacao_jogador  # Se pontos < 22, continua
    la      a0, m_jogador_perde # Exibe mensagem: "\nO jogador estourou! O dealer venceu!"
    li      a7, 4
    ecall
    addi    s8, s8, 1  # Incrementa vitoria do dealer
    j       info_geral # Chama info_geral
continua_pontuacao_jogador:
    li      t0,21  
    beq     s5, t0, decisao_dealer # Se pontos jogador == 21, chama info_geral
    j       decisao_jogador # Se pontos jogador < 21, chama decisao_jogador

# ================================================================================= #
# Função para calcular a pontuação do dealer
valida_pontuacao_dealer:
    li      t0, 22  # t0 = limite de pontos (21)
    blt     s6, t0,continua_pontuacao_dealer  # Se pontos < 22, continua
    la      a0, m_dealer_perde # Exibe mensagem: "\nO dealer estourou! Você venceu!"
    li      a7, 4
    ecall
    addi    s7, s7, 1  # Incrementa vitoria do jogador
    j       fim_dealer # Chama fim_dealer
continua_pontuacao_dealer:
    beq     s6,s5, empate # Se pontos dealer == pontos jogador, chama empate
    li      t0,21
    beq     s6, t0, fim_dealer # Se pontos dealer == 21, chama info_geral
    j       decisao_dealer



# ================================================================================= #
# Função para pedir carta (hit)

hit_jogador:
    la      a0, m_info_jogador_recebe # Exibe mensagem: "\nO Jogador recebe: "
    li      a7, 4
    ecall

    # Gerando nova carta
    la      a0, cartas_usos
    jal     gerar_nova_carta
    mv      t3, a0  # t3 = nova carta
    li      a7, 1
    ecall

    # Inserindo nova carta na mão 
    mv      a0, s3  
    mv      a1, t3  # t3 = nova carta
    jal     inserir_nova_carta # Insere carta no slot do jogador
    mv      s3, a0  # Atualiza slot do jogador

    # Revela pontos da mão do jogador
    la      a0, m_jogador_tem # Exibe mensagem: "\nO jogador tem: "
    li      a7, 4
    ecall

    mv      a0, s1  # s1 = mao 
    jal     inicio_exibe_mao # Exibe cartas do jogador
    mv      s5, a0  # s5 = pontos jogador

    j valida_pontuacao_jogador


# ================================================================================= #
# Função para finalizar a rodada - jogador decide não pedir mais cartas (stand)
stand_jogador:
    j decisao_dealer # Chama a decisão do dealer

# ================================================================================= #
# Função para pedir carta (hit) do dealer
hit_dealer:
    la      a0, m_dealer_pede_carta # Exibe mensagem: "\nO dealer deve continuar pedindo cartas..."
    li      a7, 4
    ecall
    la      a0, m_info_dealer_recebe # Exibe mensagem: "\nO Dealer recebe: "
    li      a7, 4
    ecall
    # Gerando nova carta
    la      a0, cartas_usos
    jal     gerar_nova_carta
    mv      t3, a0  # t3 = nova carta
    li      a7, 1
    ecall
    # Inserindo nova carta na mão do dealer
    mv      a0, s4  # s4 = mao dealer
    mv      a1, t3  # t3 = nova carta
    jal     inserir_nova_carta # Insere carta no slot do dealer
    mv      s4, a0  # Atualiza slot do dealer       
    # Revela pontos da mão do dealer
    la      a0, m_dealer_tem # Exibe mensagem: "\nO dealer tem: "
    li      a7, 4
    ecall       
    mv      a0, s2  # s2 = mao dealer
    jal     inicio_exibe_mao # Exibe cartas do dealer
    mv      s6, a0  # s6 = pontos dealer    

    j valida_pontuacao_dealer

# ================================================================================= #
# Loop de controle de jogo - computa jogadas, pontos, etc.
nova_rodada:
    la      a0, pula_linha # Exibe mensagem: "\n"
    li      a7, 4
    ecall

    # Inicializando endereços
    la      s0, cartas_usos # s0 = baralho (inicial)
    la      s1, mao_jogador # s1 = cartas jogador (inicial)
    la      s2, mao_dealer # s2 = cartas dealer (inicial)
    mv      s3, s1  # slot jogador (atual)
    mv      s4, s2  # slot dealer (atual)

	# Começando rodada
    mv      a0, s0
    mv      a1, s1
    mv      a2, s2
    jal     inicio_embaralhar


    # Distribuindo (+2 cartas)
    la      a0, m_info_jogador_recebe   # Exibe mensagem: "\nO jogador recebe: "
    li      a7, 4
    ecall

    # carta 1
    la      a0, cartas_usos
    jal     gerar_nova_carta
    mv      t3, a0  # t3 = carta
    mv      a0, t3
    li      a7, 1
    ecall
    mv     a0, s3  # s1 = mao jogador
    mv     a1, t3  # t3 = nova carta
    jal    inserir_nova_carta # Insere carta no slot do jogador
    mv     s3, a0  # Atualiza slot do jogador
    la     a0, m_e # Exibe mensagem: " e "
    li     a7, 4
    ecall
    # carta 2
    la      a0, cartas_usos
    jal     gerar_nova_carta
    mv      t3, a0  # t3 = carta
    mv      a0, t3
    li      a7, 1
    ecall
    mv     a0, s3  # s1 = mao jogador
    mv     a1, t3  # t3 = nova carta
    jal    inserir_nova_carta # Insere carta no slot do jogador
    mv     s3, a0  # Atualiza slot do jogador

    # Distribuindo (+2 cartas)
    la      a0, m_info_dealer_revela  # Exibe mensagem: "\nO jogador recebe: "
    li      a7, 4
    ecall
    la      a0, cartas_usos
    jal     gerar_nova_carta
    mv      t3, a0  # t3 = carta
    mv      a0, t3
    li      a7, 1
    ecall
    mv     a0, s4  # s4 = mao dealer
    mv     a1, t3  # t3 = nova carta
    jal    inserir_nova_carta # Insere carta no slot do jogador
    mv     s4, a0  # Atualiza slot do dealer
    la     a0, m_e_oculta # Exibe mensagem: " e "
    li     a7, 4
    ecall
    la      a0, cartas_usos
    jal     gerar_nova_carta
    mv      t3, a0  # t4 = carta
    mv      a0, t3
    mv      a0, s4  # s2 = mao dealer
    mv      a1, t3  # t3 = nova carta
    jal     inserir_nova_carta # Insere carta no slot do jogador
    mv      s4, a0  # Atualiza slot do dealer
    
    # revela pontos da mão jogador 
    la      a0, m_jogador_tem # Exibe mensagem: "\nO jogador tem: "
    li      a7, 4
    ecall

    mv      a0, s1  # s1 = mao jogador
    jal     inicio_exibe_mao # Exibe cartas do jogador
    mv      s5, a0  # s5 = pontos jogador
    j valida_pontuacao_jogador
    
decisao_jogador:
    
    la      a0, m_fazer # Exibe mensagem: "\nO que voce deseja fazer? (1 - Hit, 2 - Stand): "
    li      a7, 4
    ecall
    li      a7, 5 # Le a opcao do usuario
    ecall

    li      t0, 1
    beq     a0, t0, hit_jogador # Se a opção for 1, chama hit_jogador
    li      t0, 2
    beq     a0, t0, stand_jogador # Se a opção for 2, chama stand_jogador

    la      a0, m_opcao_invalida # Exibe mensagem: "\nOpcao invalida! Tente novamente."
    li      a7, 4
    ecall
    
    j    decisao_jogador

decisao_dealer:
    la    a0, m_dealer_tem # Exibe mensagem: "\nO Dealer tem: "
    li      a7, 4
    ecall
    mv      a0, s2  # s2 = mao dealer
    jal     inicio_exibe_mao # Exibe cartas do dealer
    mv      s6, a0  # s6 = pontos dealer
    li      t3, 17
    bge     s6, t3, fim_dealer # Se pontos dealer >= 17, finaliza
    j       hit_dealer # Chama hit_dealer
fim_dealer:
    blt     s5, s6, fim_jogador_perde # Se pontos jogador < pontos dealer
    addi    s7, s7, 1  # Incrementa vitoria do jogador
    j       fim_rodada # Chama fim_rodada
fim_jogador_perde:
    addi    s8, s8, 1  # Incrementa vitoria do dealer

fim_rodada:
    j       info_geral

empate:
    la      a0, m_empate # Exibe mensagem: "\nEmpate! Ninguem venceu!"
    li      a7, 4
    ecall
    j       info_geral

fim:
    li      a7, 10
    ecall

