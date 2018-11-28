#import<stdio.h>

int main(){
  int x, num, intervalo;

  for (x = 0; x < 5; x++) {
    printf("Digite um numero: ");
    scanf("%d", &num);
    if(num >= 10) {
      if (num <= 150) {
        intervalo = intervalo + 1;
      }
    }
  }

  printf("Ao total, foram digitados %d numeros no intervalotre 10 e 150.", intervalo);

	return 0;
}
