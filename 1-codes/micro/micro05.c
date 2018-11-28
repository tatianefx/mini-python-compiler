#import<stdio.h>
#include <string.h>

int main(int argc, char *argv[]){
  int x, m, h;
  char nome, sexo;

  for (x = 0; x < 5; x++) {
    printf("Digite o nome: ");
    scanf("%c", &nome);

    printf("H - Homem ou M - Mulher: ");
    scanf("%c", &sexo);

    switch (sexo) {
      case 'H':
        h = h + 1;
        break;
      case 'M':
        m = m + 1;
        break;
      default:
        printf("Sexo só pode ser H ou M!");
        break;
    }
  }

  printf("Foram inseridos %d Homens", h);
  printf("Foram inseridas %d Mulheres", m);

	return 0;
}
