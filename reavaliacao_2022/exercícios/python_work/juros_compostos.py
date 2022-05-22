import matplotlib
matplotlib.use('TkAgg')
import matplotlibe.pyplot as grafico

def valor_mais_redimento(valor, percentual):
    return valor + (valor * percentual / 100)


def mostra_grafico(periodos, acumulados):
    grafico.plot(periodos, acumulados)
    grafico.xlabel("Períodos")
    grafico.ylabel("Valor acumulado, em reais")
    grafico.title("Projeção juros compostos")
    grafico.show()

def projecao(inicio, rendimento, aporte, periodos):
    if periodos > 0:

        acumulado = inicio

        lista_periodos = []
        lista_acumulados = []

        for meses in range(periodos):
            lista_periodos.append(meses + 1)
            acumulado = valor_mais_redimento(acumulado, rendimento) + aporte
            lista_acumulados.append(acumulado)
            print("Após ", meses + 1, " períodos(s), o montante será de R$", round(acumulado, 2), ".")

        mostra_grafico(lista_periodos, lista_acumulados)


investimento_inicial = float(input("Quanto você possui para o investimento inicial? "))
rendimento_periodo = 0.54
print(f"A projeção de rendimento para os períodos é de {rendimento_periodo}%")
aporte_periodo = float(input("De quanto será o aporte nos períodos?: "))
meses = int(input("Quantos meses de inventimento você fará? "))

projecao(investimento_inicial, rendimento_periodo, aporte_periodo, meses)