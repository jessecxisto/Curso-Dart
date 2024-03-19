//Faça um algoritmo que leia um valor qualquer e imprima na tela com um reajuste de 5%.

import 'dart:io';

main() {
  final entradaDoUsuario = stdin.readLineSync()!;
  final valor = double.parse(entradaDoUsuario);

  print(valor + valor * 0.05);
}
