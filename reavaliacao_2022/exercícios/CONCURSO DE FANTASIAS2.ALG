Algoritmo "Concurso de Fantasias"
// Disciplina  :  [L�gica, Computa��o e Algoritmos]
// Professor   :  Ezequiel Bertti
// Descri��o   :  Verificar e mostrar ganhador de concurso
// Autor(a)    :  Leonardo Campos
// Data atual  :  03/09/2018
Var
// Se��o de Declara��es das vari�veis
nome: vetor [0..9] de Caracter
nota: vetor [0..9] de inteiro
i: inteiro
Vencedor: inteiro
Maiornota: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
maiornota <- 0
para i de 0 ate 9 passo 1 faca
     escreval("Juiz, digite o nome do", i+1," � Concorente :")
     leia(nome[i])
     escreval("Agora digite a", i+1, "� nota do Concorrente")
     leia(nota[i])
// Outra bela contribui��o do David
//usado para restringir o valor de nota que pode ser dado
enquanto (nota[i]<0) ou (nota[i]>10) faca
     escreval ("Aviso!!! As notas v�o de o a 10. Escreva novamente.")
	  leia(nota[i])
fimenquanto
escreval
// Agrade�o novamente a explica��o do meu amigo David
//aqui acontecer� a compara��o das notas
se nota[i]> maiornota ent�o
   maiornota <- nota[i]
   vencedor <- i
fimse
fimpara
   escreval ("O vencedor � o candidato ", nome[vencedor], " com a nota ", nota[vencedor], "!")

Fimalgoritmo
