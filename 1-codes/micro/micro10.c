#import<stdio.h>

int fatorial(int n) {
  if (n <= 0) {
    return 1;
  } else {
    return (n * fatorial(n - 1));
  }
}

int main() {
  int numero, fat;

  printf("Digite um numero: ");
  scanf("%d", &numero);

  fat = fatorial(numero);
  printf("O fatorial de %d e %d", numero, fat);

  return 0;
}
