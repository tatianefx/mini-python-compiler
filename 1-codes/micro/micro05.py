def micro05():
    x,m,h = 0,0,0
    nome,sexo = "",""
    for x in range(5):
        print("Digite o nome: ")
        nome = input()
        print("H - Homem ou M - Mulher")
        sexo = input()
        if sexo == 'H':
            h = h+1
        elif sexo == 'M':
            m = m+1
        else:
            print("Sexo so pode ser H ou M!")

    print("Foram inseridos " + str(h) + " Homens")
    print("Foram inseridas " + str(m) + " Mulheres")

micro05()
