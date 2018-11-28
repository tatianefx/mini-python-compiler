#import<stdio.h>

int main() {
  int numero = 0;
  int programa = 1;
  char opc;

  while (programa == 1) {
    printf("Digite um numero: ");
    scanf("%d", &numero);

    if(numero > 0) {
      printf("Positivo");
    } else {
      if (numero == 0) {
        printf("O numero e igual a 0");
      } else if (numero < 0) {
        printf("Negativo");
      }
    }
    printf("Deseja Finalizar? (S/N) ");
    scanf("%c", &opc);
    if (opc == 'S') {
      programa = 0;
    }
  }
  return 0;
}
