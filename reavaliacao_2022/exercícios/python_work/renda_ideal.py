tipo1 = "Moradia"
tipo2 = "Educação"
tipo3 = "Transporte"

rendamensaltotal = float(input("Qual a sua renda total?R$ "))

moradiaideal = (rendamensaltotal*30) / 100
educacaoideal = (rendamensaltotal*20) / 100
transporteideal = (rendamensaltotal*15) / 100

print ('\nQual seu gasto total com {}?'.format(tipo1))
moradia = float(input("R$"))
print ('Qual seu gasto total com {}?'.format(tipo2))
educacao = float(input("R$"))
print ('Qual seu gasto total com {}?'.format(tipo3))
transporte = float(input("R$"))

moradiareal = (moradia*100)/rendamensaltotal
educacaoreal = (educacao*100)/rendamensaltotal
transportereal = (transporte*100)/rendamensaltotal

print ('\nDIAGNÓSTICO\n')
print ('sua renda mensal total é R${:.2f}.'.format(rendamensaltotal))
print ('Seu gasto total com moradia é R${:.2f}.'.format(moradia))
print ('Seu gasto total com educação é R${:.2f}.'.format(educacao))
print ('Seu gasto total com transporte é R${:.2f}.\n'.format(transporte))


if moradia <= moradiaideal:
    print ('Seu gasto total com {} está dentro da margem recomendada'.format(tipo1))
else:
    print ('Atenção!!! Seu gasto máximo com {} é de R${:.2f}, portanto compromete {:.1f}% de sua renda total. \n'
           'O recomendado é de 30%. Portanto o máximo de sua renda comprometida com {} deveria ser R${:.2f}\n'.format(tipo1,moradia,moradiareal,tipo1,moradiaideal))

if educacao <= educacaoideal:
    print ('Seu gasto total com {} está dentro da margem recomendada'.format(tipo2))
else:
    print ('Atenção!!! Seu gasto máximo com {} é de R${:.2f}, portanto compromete {:.1f}% de sua renda total. \n'
           'O recomendado é de 20%. Portanto o máximo de sua renda comprometida com {} deveria ser R${:.2f}\n'.format(tipo2,educacao,educacaoreal,tipo2,educacaoideal))

if transporte <= transporteideal:
        print('Seu gasto total com {} está dentro da margem recomendada'.format(tipo3))
else:
    print('Atenção!!! Seu gasto máximo com {} é de R${:.2f}, portanto compromete {:.1f}% de sua renda total. \n'
          'O recomendado é de 15%. Portanto o máximo de sua renda comprometida com {} deveria ser R${:.2f}'.format(tipo3, transporte, transportereal, tipo3, transporteideal))

