//Faça um programa que receba dez números e usando laços de repetição calcule e mostre a quantidade de números entre 30 e 90.

import 'dart:io';

main() {
  int quantidadeDeNumeros = 10;
  int numerosEntre30e90 = 0;

  for (int i = 1; i <= quantidadeDeNumeros; i++) {
    stdout.write("Digite o $iº número: ");
    int numero = int.parse(stdin.readLineSync()!);

    if (numero >= 30 && numero <= 90) {
      numerosEntre30e90++;
    } else
      ;
  }

  print("Você digitou $numerosEntre30e90 números entre 30 e 90.");
}
