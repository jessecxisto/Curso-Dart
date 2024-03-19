//Faça um programa que receba um conjunto de valores inteiros e positivos,
//com o intervalo formado pelo número imprima na tela todos os números primos existentes

import 'dart:io';

bool ehPrimo(int n) {
  if (n <= 1) {
    return false;
  }
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  print("Digite dois números inteiros positivos (intervalo): ");
  stdout.write("1º: ");
  int n1 = int.parse(stdin.readLineSync()!);
  stdout.write("2º: ");
  int n2 = int.parse(stdin.readLineSync()!);

  bool encontrado =
      false; // Variável para controlar se algum número primo foi encontrado

  if (n1 > n2) {
    for (int i = n2; i <= n1; i++) {
      if (ehPrimo(i)) {
        if (!encontrado) {
          print("Os números primos formados nesse intervalo são:");
          encontrado =
              true; // Altera o estado para indicar que pelo menos um número primo foi encontrado
        }
        print(i);
      }
    }
  } else {
    for (int i = n1; i <= n2; i++) {
      if (ehPrimo(i)) {
        if (!encontrado) {
          print("Os números primos formados nesse intervalo são:");
          encontrado =
              true; // Altera o estado para indicar que pelo menos um número primo foi encontrado
        }
        print(i);
      }
    }
  }

  if (!encontrado) {
    print("Não foram encontrados números primos no intervalo fornecido.");
  }
}
