#import<stdio.h>

int main(){
  int numero;
  printf("Digite um numero de 1 a 5: ");
  scanf("%d", &numero);

  if (numero == 1) {
    printf("Um");
  } else if(numero == 2) {
    printf("Dois");
  } else if(numero == 3) {
    printf("Tres");
  } else if(numero == 4) {
    printf("Quatro");
  } else if(numero == 5) {
    printf("Cinco");
  } else {
    printf("Numero Invalido!!!");
  }

	return 0;
}
