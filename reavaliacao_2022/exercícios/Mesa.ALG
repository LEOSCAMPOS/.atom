 Algoritmo "Mesa"
// Disciplina  :  [L�gica, Computa��o e Algoritmos]
// Professor   :   Ezequiel Bertti
// Descri��o   : Calcula a divis�o de uma conta de consumo em um restaurante ou bar.
// Autor(a)    : LEonardo Campos
// Data atual  : 24/08/2018
Var
// Se��o de Declara��es das vari�veis 
conta, garcon, porpess, contacom: real
pessoas: inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
Escreval (" Insira o Valor total da mesa: ")
leia (conta)
Escreval (" Insira o N�mero de pessoas: ")
leia (pessoas)
porpess <- (conta / pessoas)
garcon <- conta * 0.1
contacom <- conta - garcon
escreval (" O valor total da conta �: ", "R$" , conta)
escreval (" O valor do consumo foi: ", "R$" ,  contacom)
escreval (" A divis�o da mesa, por pessoa, ser�: ", "R$" ,  porpess)
escreval (" valor do servi�o �: ", "R$" ,  garcon)
escreval (" ")
escreval ("O brigado pela prefer�ncia")

Fimalgoritmo