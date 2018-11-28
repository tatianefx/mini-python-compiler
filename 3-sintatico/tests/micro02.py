def main() -> None:
    num1 = 0
    num2 = 0
    print("Digite o primeiro numero: ")
    int(input(num1))
    print("Digite o segundo numero: ")
    int(input(num2))

    if num1 > num2:
        print("\nO primeiro numero ")
        print(num1)
        print(" e maior que o segundo ")
        print(num2)
    else:
        print("\nO segundo numero ")
        print(num2)
        print(" e maior que o primeiro ")
        print(num1)

main()
