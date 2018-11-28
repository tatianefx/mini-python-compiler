#import<stdio.h>

int verifica(int n) {
  int res;
  if (n > 0) {
    res = 1;
  } else if (n < 0) {
    res = -1;
  } else {
    res = 0;
  }
  return res;
}

int main() {
  int numero, x;

  printf("Digite um numero: ");
  scanf("%d", &numero);

  x = verifica(numero);
  if(x == 1) {
    printf("Numero Positivo");
  } else if(x == 0) {
    printf("Zero");
  } else {
    printf("Negativo");
  }

  return 0;
}
