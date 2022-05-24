

def ler_csv():
    arquivocsv = "Assessmant_PIBs.csv"
    if os.path.exists(arquivocsv):
        paises_pibs_anos_txt = open(arquivocsv, "r",encoding="utf-8")
        paises_pibs_anos = paises_pibs_anos_txt.read().split("\n")
        paises_pibs_anos_txt.close()
        paises_pibs = []

        for linha in range(len(paises_pibs_anos)):
            if linha == 0:
                cabecalho = paises_pibs_anos[linha].split(",")
            else:
                paises_pibs.append(paises_pibs_anos[linha].split(","))

        return [cabecalho, paises_pibs]
    else:
        print(f"O arquivo {arquivocsv} não existe no diretório")

import os


def verificar_pais_escolhido(escolha, lista):
    pais_valido = False
    for linha in range(len(lista)):
        if lista[linha][0].lower() == escolha.lower():
            pais_valido = linha
            retorno = True
    return [retorno, pais_valido]


def verificar_ano_escolhido(escolha, lista):
    ano_valido = False
    for coluna in range(len(lista)):
        if lista[coluna] == escolha:
            return coluna
    return ano_valido


def consultar_pib(cabecalho_anos, listas_paises):
    linha_pais = False
    while linha_pais == False:
        pais_escolhido = input("Informe o país: ")
        linha_pais = verificar_pais_escolhido(pais_escolhido, listas_paises)
        if linha_pais[0] == False:
            print("País inexistente.")

    coluna_ano = False
    while coluna_ano == False:
        ano_escolhido = input("Informe o ano entre 2013 e 2020: ")
        coluna_ano = verificar_ano_escolhido(ano_escolhido, cabecalho_anos)
        if coluna_ano == False:
            print("Ano não disponível.")

    print(f"PIB {listas_paises[linha_pais[1]][0]} em {cabecalho_anos[coluna_ano]}: US$ {listas_paises[linha_pais[1]][coluna_ano]} trilhões.", sep="")


def variacao_pib(listas_paises):
    for linha_pais in listas_paises:
        nome_pais = linha_pais[0]
        variacao = (float(linha_pais[len(linha_pais) - 1]) * 100 / float(linha_pais[1])) - 100
        print(f"{nome_pais.ljust(21)} Variação de {round(variacao, 2)} % entre 2013 e 2020.", sep="")


def grafico_pais(pais, cabecalho_anos, listas_paises):
    import matplotlib.pyplot as this_grafico

    valores = []
    for indice in range(1, len(listas_paises[pais])):
        valores.append(float(listas_paises[pais][indice]))

    this_grafico.plot(cabecalho_anos[1:], valores)

    this_grafico.xlabel("Períodos")
    this_grafico.ylabel("Valor PIB, R$")
    this_grafico.title("Evolução do PIB - 2013 / 2020 " + listas_paises[pais][0])

    this_grafico.show()


def grafico(cabecalho_anos, listas_paises):
    linha_pais = False
    while linha_pais == False:
        pais_escolhido = input("Qual o país a ser consultado?: ")
        linha_pais = verificar_pais_escolhido(pais_escolhido, listas_paises)
        if linha_pais[0] == False:
            print("País não consta na base de dados.")
    grafico_pais(linha_pais[1], cabecalho_anos, listas_paises)


retorno_csv = ler_csv()

topo_cabecalho_anos = retorno_csv[0]
lista_listas_paises = retorno_csv[1]

opcao = 0

# Menu de opções
while opcao != 5:
    print("1 - CONSULTAR PIB POR PAÍS")
    print("2 - VARIAÇÃO DO PIB (%)")
    print("3 - EVOLUÇÃO DO PIB (%)")
    print("5 - SAIR")
    opcao = int(input())

    if opcao == 1:
        consultar_pib(topo_cabecalho_anos, lista_listas_paises)
    elif opcao == 2:
        variacao_pib(lista_listas_paises)
    elif opcao == 3:
        grafico(topo_cabecalho_anos, lista_listas_paises)