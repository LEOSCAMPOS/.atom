Algoritmo "semnome"
// Disciplina  : [L�gica, Computa��o e Algoritmos]
// Professor   : Ezequiel Bertti
// Descri��o   : Calcula a divis�o de uma conta de consumo em um restaurante ou bar.
// Autor(a)    : Leonardo Campos
// Data atual  : 23/09/2018
Var
// Se��o de Declara��es das vari�veis 
salariobruto, salariocomprometido, emprestimo: real
Parcela, valorparcela, salcomprometido: real


Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...

escreval ("Qual o valor de emprestimo que voc� deseja?")
leia ( emprestimo )
escreval (" Qual o valor do seu salario bruto?" )
leia ( salariobruto )
escreval (" Em quantas parcelas deseja dividir: ")
leia ( parcela )

valorparcela <- (emprestimo/parcela)
salcomprometido <- (salariobruto*porcentagem)/100

Escreval ( " Salario Bruto : ", salariobruto )
escreval ( " Sua parcela ter� o valor de", valorparcela, " a ser paga em" , parcela," vezes")
escreval (
se valorparcela > salariobruto*0.3 entao
escreval (" Infelizmente sua linha de cr�dito n�o pode ser concedida")
senao
escreval (" Seu cr�dito est� aprovado" )
fimse



Fimalgoritmo