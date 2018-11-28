#import<stdio.h>

int main() {
  int numero = 1;

  while (numero < 0 || numero > 0) {
    printf("Digite um numero: ");
    scanf("%d", &numero);

    if(numero > 10) {
      printf("O numero %d e maior que 10", numero);
    } else {
      printf("O numero %d e menor que 10", numero);
    }
  }
  return 0;
}
