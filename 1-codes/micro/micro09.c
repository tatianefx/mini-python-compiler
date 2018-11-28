#import<stdio.h>

int main() {
  float preco, venda, novopreco;

  printf("Digite o preco: ");
  scanf("%f", &preco);

  printf("Digite o venda: ");
  scanf("%f", &venda);

  if(venda < 500 || preco < 30) {
      novopreco = preco + 10.0 / 100.0 * preco;
  } else if((venda >= 500 && venda <1200) || (preco >= 30 && preco <80)) {
      novopreco = preco + 15.0 / 100.0 * preco;
  } else {
    novopreco = preco + 20.0 / 100.0 * preco;
  }

  printf("O novo preco e %f", novopreco);
  return 0;
}
