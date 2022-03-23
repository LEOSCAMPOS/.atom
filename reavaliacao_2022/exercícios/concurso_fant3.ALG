Algoritmo "concurso_fant"
// Disciplina  :  [Lógica, Computação e Algoritmos]
// Professor   :  Ezequiel Bertti
// Descrição   :  Verifica a situação eleitoral de um indivíduo
// Autor(a)    :  Leonardo Campos
// Data atual  :  24/08/2018


Var
// Seção de Declarações das variáveis
start , stop , i : inteiro  //solução encontrada na internet
nota , Vencedor : real
nome : carcater

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

start <- 1
stop <- 10
i <- 0
nota <- 0
vencedor <- 0

escreval (" Olá Jurado. Dê suas notas para cada uma das", stop, " fantasias.")
escreval ("")

para i de start ate stop faca
   escreva  (" ","Fantasia", i, "  : ")
   leia (nota)
   se (i = 1) entao
      vencedor <- nota
   fimse
   se nota > vencedor entao
      vencedor <- nota
   fimse
fimpara

escreval ("")
escreva (" A Fantasia campeã é a número", nota ," com nota ", vencedor )
escreval (" ")
escreval ("parabéns!")


FimAlgoritmo
