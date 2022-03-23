algoritmo "carros"
// Disciplina  : [Lógica, Computação e Algoritmos]
// Professor   : Ezequiel Bertti
// Descrição   : Calcula a divisão de uma conta de consumo em um restaurante ou bar.
// Autor(a)    : Leonardo Campos
// Data atual  : 23/09/2018
arquivo "carros.txt"
//Arquivo referenciado em drive.google.com/open?id=1oL3zjbLHDizKfwmDQfp_r8o3btA7oaiifuCm9Zz2hYg

Funcao custoanual(custocompra:real; custoimposto:real; custocombustivel:real; custoseguro:real):real
var
custot:real
Inicio
custot <- custocompra+custoimposto+custocombustivel+(10000/custocombustivel)*3.98)
retorne custot
fimfuncao

var
i:inteiro
xveiculo:caractere
xcompra, ximposto, xcombustivel, xseguro:real
veiculo:vetor [0..5] de caractere
compra:vetor [0..5] de real
imposto:vetor [0..5] de real
combustivel:vetor [0..5] de real
seguro:vetor [0..5] de real
custo:vetor [0..5] de real

Inicio
para i de 0 ate 5 faca
     leia(xveiculo)
     leia(xcompra)
     leia(ximposto)
     leia(xcombustivel)
     leia(xseguro)
     veiculo[i] <- xveiculo
     compra[i] <- xcompra
     imposto[i] <- ximposto
     combustivel[i] <- xcombustivel
     seguro[i] <- xseguro
     custo[i] <- custoanual(xcompra, ximposto, xcombustivel, xseguro)
fimpara

escreval (" ")
escreval (" ")
escreval (" ")
escreval (" ")
escreval (" ")
escreval (" ")
escreval (" ")
escreval (" ")
escreval (" Seus resultados foram:")
para i de 0 ate 5 faca
     escreval (" ")
     escreval ("=============================================================")
     escreval (" :: Carro:                      |",veiculo[i])
     escreval ("|___________________________________________________________|")
     escreval (" :: Valor de Compra:            |",compra[i])
     escreval ("|___________________________________________________________|")
     escreval (" :: Impostos:                   |",imposto[i])
     escreval ("|___________________________________________________________|")
     escreval (" :: Valor de Seguro:            |",seguro[i])
     escreval ("|___________________________________________________________|")
     escreval (" :: Consumo com combustível:    |",combustivel[i])
     escreval ("|___________________________________________________________|")
     escreval (" :: Os custos totais ao fim do ano serão: ",custo[i])
     escreval ("=============================================================")
fimpara

Fimalgoritmo