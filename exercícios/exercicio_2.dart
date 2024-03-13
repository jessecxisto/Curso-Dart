//Faça um algoritmo para receber um número qualquer e imprimir na tela se o número é par ou ímpar, positivo ou negativo.

import 'dart:io';

main() {
  stdout.write("Digite um número: ");

  var entrada1 = stdin.readLineSync()!;
  var n1 = double.parse(entrada1);

  var modulo = n1 % 2;

  if (modulo == 0 && n1 >= 0) {
    print("O número é par e positivo!");
  } else if (modulo == 0 && n1 < 0) {
    print("O número é par e negativo!");
  } else if (n1 < 0) {
    print("O número é ímpar e negativo");
  } else if (n1 >= 0) {
    print("O número é ímpar e positivo!");
  }
}
