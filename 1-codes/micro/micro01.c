#import<stdio.h>

int main(){
	float cel, far;
	cel = 0.0;
  far = 0.0;
  printf("Tabela de conversao: Celsius -> Fahrenheit");

  printf("Digite a temperatura em Celsius: ");
  scanf("%f", &cel);

  far = (9.0 * cel + 160.0) / 5.0;
  printf("%f", far);

	return 0;
}
