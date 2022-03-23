 Algoritmo "Mesa"
// Disciplina  :  [Lógica, Computação e Algoritmos]
// Professor   :   Ezequiel Bertti
// Descrição   : Calcula a divisão de uma conta de consumo em um restaurante ou bar.
// Autor(a)    : LEonardo Campos
// Data atual  : 24/08/2018
Var
// Seção de Declarações das variáveis 
conta, garcon, porpess, contacom: real
pessoas: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
Escreval (" Insira o Valor total da mesa: ")
leia (conta)
Escreval (" Insira o Número de pessoas: ")
leia (pessoas)
porpess <- (conta / pessoas)
garcon <- conta * 0.1
contacom <- conta - garcon
escreval (" O valor total da conta é: ", "R$" , conta)
escreval (" O valor do consumo foi: ", "R$" ,  contacom)
escreval (" A divisão da mesa, por pessoa, será: ", "R$" ,  porpess)
escreval (" valor do serviço é: ", "R$" ,  garcon)
escreval (" ")
escreval ("O brigado pela preferência")

Fimalgoritmo