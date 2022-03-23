Algoritmo "Concurso de Fantasias"
// Disciplina  :  [Lógica, Computação e Algoritmos]
// Professor   :  Ezequiel Bertti
// Descrição   :  Verificar e mostrar ganhador de concurso
// Autor(a)    :  Leonardo Campos
// Data atual  :  03/09/2018
Var
// Seção de Declarações das variáveis
nome: vetor [0..9] de Caracter
nota: vetor [0..9] de inteiro
i: inteiro
Vencedor: inteiro
Maiornota: real

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
maiornota <- 0
para i de 0 ate 9 passo 1 faca
     escreval("Juiz, digite o nome do", i+1," º Concorente :")
     leia(nome[i])
     escreval("Agora digite a", i+1, "º nota do Concorrente")
     leia(nota[i])
// Outra bela contribuição do David
//usado para restringir o valor de nota que pode ser dado
enquanto (nota[i]<0) ou (nota[i]>10) faca
     escreval ("Aviso!!! As notas vão de o a 10. Escreva novamente.")
	  leia(nota[i])
fimenquanto
escreval
// Agradeço novamente a explicação do meu amigo David
//aqui acontecerá a comparação das notas
se nota[i]> maiornota então
   maiornota <- nota[i]
   vencedor <- i
fimse
fimpara
   escreval ("O vencedor é o candidato ", nome[vencedor], " com a nota ", nota[vencedor], "!")

Fimalgoritmo
