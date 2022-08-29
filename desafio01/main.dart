import 'dart:io';

void main() {
  // Variável que controla quando o prgrama será finalizado
  String continuar = 'S';

  // while para que possam ser verificados vários números sem a necessidade de reinicar o programa
  while (continuar == 'S') {
    // Print para solicitar o valor junto de input para receber o valor digitado
    print('Digite um valor inteiro: ');
    int? n = int.parse(stdin.readLineSync()!);

    // Verifica se o valor digitado é positivo ou não
    if (n <= 0) {
      print('Valor inválido!, tente novamente!');
    } else {
      // Variável soma recebe o valor inteiro que retorna da função somatoria_valrores()
      int soma = somatoria_valores(n);

      // print que apresenta o valor que está armazenado na variável soma
      print(
          "A soma todos os valores inteiros (positivos) menores que o valor digitado é igual a: $soma");

      print("Você deseja verificar mais um número? [S/N]: ");
      continuar = stdin.readLineSync()!.toUpperCase();
    }
  }
  print("Obrigado por utilizar o programa! :) ");
}

// Função com retorno do tipo inteiro que também recebe um valor inteiro
int somatoria_valores(int valor) {
  int soma = 0;
  for (int i = valor - 1; i > 0; i--) {
    // Esta função verifica se o os numeros positivos inferiores ao parametro passado para ela são divisiveis ou não por 3 e 5
    if ((i % 3 == 0) || (i % 5 == 0)) {
      // Se forem divisiveis eles são somados a uma variavel soma que é inicializada com o valor 0
      soma += i;
    }
  }
  // Ao final de todas as verificações a função retorna o valor de soma.
  return soma;
}
