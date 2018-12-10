def main() -> None:
    x = 0
    m = 0
    h = 0
    nome = ""
    sexo = ""
    for x in range(0,1):
        print("Digite o nome: ")
        str(input(nome))
        print("H - Homem ou M - Mulher\n")
        str(input(sexo))
        if sexo == "H":
            h = h + 1
        elif sexo == "M":
            m = m + 1
        else:
            print("Sexo so pode ser H ou M!\n")

    print("\nForam inseridos ")
    print(h)
    print(" Homens")

    print("\nForam inseridas ")
    print(m)
    print(" Mulheres")

main()
