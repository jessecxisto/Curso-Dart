//Faça um algoritmo que receba um número inteiro e imprima na tela o seu antecessor e o seu sucessor.

import 'dart:io';

main() {
  stdout
      .write("Digite um número para descobrir seu antecessor e seu sucessor: ");
  var entrada1 = stdin.readLineSync()!;
  var numero = int.parse(entrada1);

  var n1 = numero - 1;
  var n2 = numero + 1;

  print("O antecessor é $n1 e o sucessor é $n2");
}
