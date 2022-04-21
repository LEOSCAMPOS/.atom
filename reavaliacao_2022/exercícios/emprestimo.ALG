Algoritmo "semnome"
// Disciplina  : [Lógica, Computação e Algoritmos]
// Professor   : Ezequiel Bertti
// Descrição   : Calcula a divisão de uma conta de consumo em um restaurante ou bar.
// Autor(a)    : Leonardo Campos
// Data atual  : 23/09/2018
Var
// Seção de Declarações das variáveis 
salariobruto, salariocomprometido, emprestimo: real
Parcela, valorparcela, salcomprometido: real


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

escreval ("Qual o valor de emprestimo que você deseja?")
leia ( emprestimo )
escreval (" Qual o valor do seu salario bruto?" )
leia ( salariobruto )
escreval (" Em quantas parcelas deseja dividir: ")
leia ( parcela )

valorparcela <- (emprestimo/parcela)
salcomprometido <- (salariobruto*porcentagem)/100

Escreval ( " Salario Bruto : ", salariobruto )
escreval ( " Sua parcela terá o valor de", valorparcela, " a ser paga em" , parcela," vezes")
escreval (
se valorparcela > salariobruto*0.3 entao
escreval (" Infelizmente sua linha de crédito não pode ser concedida")
senao
escreval (" Seu crédito está aprovado" )
fimse



Fimalgoritmo