/*Faça um programa para calcular n! (Fatorial de n), sendo que o valor inteiro de n é fornecido pelo usuário.

Sabe-se que:

N! = 1 * 2 * 3 * ... (n – 1) * n
0! = 1, por definição; */

import 'dart:io';

main() {
  stdout.write("Digite um valor inteiro para saber seu fatorial: ");
  int n = int.parse(stdin.readLineSync()!);
  int resultado = 1;

  for (int i = 1; i <= n; i++) {
    resultado *= i;
  }
  print("$n! = $resultado.");
}
