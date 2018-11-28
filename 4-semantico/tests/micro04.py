def main() -> None:
    x = 0
    num = 0
    intervalo = 0
    for x in range(0,5):
        print("Digite o numero: ")
        int(input(num))
        if num >= 10:
            if num <= 150:
                intervalo = intervalo + 1
    print("\nAo total, foram digitados ")
    print(intervalo)
    print(" numeros no intervalotre 10 e 150")

main()
