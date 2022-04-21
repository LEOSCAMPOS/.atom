Algoritmo "Eleição"
// Disciplina  :  [Lógica, Computação e Algoritmos]
// Professor   :  Ezequiel Bertti
// Descrição   :  Verifica a situação eleitoral de um individuo
// Autor(a)    :  Leonardo Campos
// Data atual  :  24/08/2018

Var
// Seção de Declarações das variáveis 

nome,situacao : caracter
idade : inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval ("insira seu nome:")
leia (nome)
escreval ("insira sua idade:")
leia (idade)

se idade < 16 entao
    escreval ("!!!Não é eleitor!!!")
    escreval (" Você nao pode votar.")
    senao
    se idade < 18 entao
    escreval ("***Eleitor Facultativo***")
    escreval (" Seu voto é facultativo.")
    senao
    se idade > 65 entao
    escreval ("***Eleitor Facultativo***")
    escreval (" Seu voto é facultativo.")
    senao
    escreval ("--Eleitor obrigatório--")
    escreval (" Você deve votar. ")
 fimse
 fimse
 fimse




Fimalgoritmo