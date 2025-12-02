import math

def resolver_funcao(funcao, intervalo):
    a, b = intervalo
    tolerancia = 0.1
    interacoes = 0 
    # Verifica se os extremos do intervalo têm sinais opostos
    if funcao(a) * funcao(b) > 0:
        return "não é possível afirmar que existe solução neste intervalo, tente outros dois números"
    else:
        while (b-a) > tolerancia:
            interacoes += 1
            fa = funcao(a)
            fb = funcao(b)
            meio = (a + b) / 2
            fmeio = funcao(meio)
            if fmeio == 0:
                a = b = meio
                break
            elif fa * fmeio < 0:
                b = meio
            else:
                a = meio
        return f"a equação tem pelo menos uma solução neste intervalo: [{a-0.1:.2f}, {b+0.1:.2f}]"
            
    raise ValueError("A raiz não foi encontrada no intervalo especificado.")

def solicita_intervalo():
    print("\nDigite dois números para definir o intervalo inicial:")
    while True:
        try:
            num1_inteval = float(input("Digite o Primeiro número: "))
            num2_inteval = float(input("Digite o Segundo número: "))
            return sorted([num_1_intevalo, num2_intevalo])  # Garantir a < b
        except ValueError:
            print("Entrada inválida. Use números reais (ex: 0.5 ou -1).")
    

def menu_funcao():
    while True:
        print("\nEscolha a função para resolver:")
        print("1. e^(2x) + x² = 3")
        print("2. 2cos(x) + 4 = x − 2")
        opcao = input("Digite 1 ou 2: ")
        if opcao in ('1', '2'):
            if opcao == '1':
                print("Você escolheu a função: e^(2x) + x² = 3")
                funcao = lambda x: math.exp(2*x) + x**2 - 3
            else:
                print("Você escolheu a função: 2cos(x) + 4 = x − 2")
                funcao = lambda x: 2*math.cos(x) + 4 - (x - 2)
            
            while True:
                try:
                    intervalo = solicita_intervalo()
                    break
                except ValueError:
                    print("Intervalo inválido. Tente novamente.")
            
            resultado = resolver_funcao(funcao, intervalo)
            print(f"Resultado: {resultado}")
            break
        else:
            print("Opção inválida. Tente novamente.")


def main():
    menu_funcao()
