def main() -> None:
	numero = 0
	x =0
	print("Digite um numero: ")
	int(input(numero))
	numero = verifica(numero)

	if numero == 1:
		print("Positivo")
	elif numero == 0:
		print("zero")
	else:
		print("Negativo")


def verifica(n:int) -> int:
	res = 0
	if n > 0:
		return 1
	if n < 0:
		return 3
	else:
		return 0

main()
