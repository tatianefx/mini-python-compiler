def main() -> None:
    numero = 0
    programa = 1
    opc = ""
    while programa == 1:
        print("Digite um numero: ")
        int(input(numero))
        if numero > 0:
            print("\nPositivo")
        else:
            if numero == 0:
                print("\nO numero e igual a 0")
            elif numero < 0:
                print("\nNegativo")

        print("\nDeseja Finalizar? (S/N) ")
        str(input(opc))
        if opc == "S":
            programa = 0

main()
