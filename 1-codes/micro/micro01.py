def micro01():
    cel , far = 0.0 , 0.0
    print(" Tabela de conversao: Celsius -> Fahrenheit")
    print("Digite a temperatura em Celsius: ")
    cel = input()
    far = (9 * cel + 160) / 5
    print("A nova temperatura e:" + str(far) + "F")

micro01()
