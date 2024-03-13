//Escreva um aplicativo que recebe inteiro e mostra os números pares e ímpares (separados), de 1 até esse inteiro.

import 'dart:io';

main() {
  stdout.write("Digite um número inteiro: ");
  int numero1 = int.parse(stdin.readLineSync()!);

  List pares = [];
  List impares = [];

  for (int contador = 1; contador <= numero1; contador++) {
    if (contador % 2 == 0) {
      pares.add(contador);
    } else {
      impares.add(contador);
    }
  }

  print("Números pares: ${pares.join(', ')} ");
  print("Números ímpares: ${impares.join(', ')}");
}
