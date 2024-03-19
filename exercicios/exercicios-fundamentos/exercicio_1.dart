//Faça um algoritmo que leia os valores de A, B, C e em seguida imprima na tela a soma entre A e B é mostre se a soma é menor que C.

import 'dart:io';

main() {
  print("Digite 3 números: ");

  var entrada = stdin.readLineSync()!;
  var a = double.parse(entrada);

  var entrada2 = stdin.readLineSync()!;
  var b = double.parse(entrada2);

  var entrada3 = stdin.readLineSync()!;
  var c = double.parse(entrada3);

  print("a = $a");
  print("b = $b");
  print("c = $c");

  var soma = a + b;
  print("A soma de a + b = $soma");
  print(soma < c ? "O resultado é menor que c" : "O resultado é maior que c");
}
