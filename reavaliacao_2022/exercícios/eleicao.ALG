Algoritmo "Elei��o"
// Disciplina  :  [L�gica, Computa��o e Algoritmos]
// Professor   :  Ezequiel Bertti
// Descri��o   :  Verifica a situa��o eleitoral de um individuo
// Autor(a)    :  Leonardo Campos
// Data atual  :  24/08/2018

Var
// Se��o de Declara��es das vari�veis 

nome,situacao : caracter
idade : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval ("insira seu nome:")
leia (nome)
escreval ("insira sua idade:")
leia (idade)

se idade < 16 entao
    escreval ("!!!N�o � eleitor!!!")
    escreval (" Voc� nao pode votar.")
    senao
    se idade < 18 entao
    escreval ("***Eleitor Facultativo***")
    escreval (" Seu voto � facultativo.")
    senao
    se idade > 65 entao
    escreval ("***Eleitor Facultativo***")
    escreval (" Seu voto � facultativo.")
    senao
    escreval ("--Eleitor obrigat�rio--")
    escreval (" Voc� deve votar. ")
 fimse
 fimse
 fimse




Fimalgoritmo