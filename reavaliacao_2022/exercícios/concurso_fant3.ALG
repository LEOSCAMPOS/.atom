Algoritmo "concurso_fant"
// Disciplina  :  [L�gica, Computa��o e Algoritmos]
// Professor   :  Ezequiel Bertti
// Descri��o   :  Verifica a situa��o eleitoral de um indiv�duo
// Autor(a)    :  Leonardo Campos
// Data atual  :  24/08/2018


Var
// Se��o de Declara��es das vari�veis
start , stop , i : inteiro  //solu��o encontrada na internet
nota , Vencedor : real
nome : carcater

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...

start <- 1
stop <- 10
i <- 0
nota <- 0
vencedor <- 0

escreval (" Ol� Jurado. D� suas notas para cada uma das", stop, " fantasias.")
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
escreva (" A Fantasia campe� � a n�mero", nota ," com nota ", vencedor )
escreval (" ")
escreval ("parab�ns!")


FimAlgoritmo
