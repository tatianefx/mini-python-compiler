def main() -> None:
    preco = 0.0
    venda = 0.0
    novopreco = 0.0
    print("Digite o preco: ")
    float(input(preco))
    print("\nDigite a venda: ")
    float(input(venda))
    if venda < 500 or preco <30:
        novopreco = preco + 10/100 *preco
    elif (venda >= 500 and venda <1200) or (preco >= 30 and preco <80):
        novopreco = preco + 15/100 * preco
    elif venda >=1200 or preco >=80:
        novopreco = preco - 20/100 * preco

    print("\nO novo preco e: ")
    print(novopreco)

main()
