/* Faça um programa que receba a idade e o peso de sete pessoas. Calcule e mostre:

A quantidade de pessoas com mais de 90 quilos;
A média das idades das sete pessoas; */

import 'dart:io';

void main() {
  int totalPessoas = 7;
  int pessoasMais90kg = 0;
  int totalIdades = 0;

  for (int i = 1; i <= totalPessoas; i++) {
    stdout.write("(Pessoa $i) Digite sua idade: ");
    int idade = int.parse(stdin.readLineSync()!);

    stdout.write("(Pessoa $i) Digite seu peso: ");
    double peso = double.parse(stdin.readLineSync()!);

    if (peso >= 90) {
      pessoasMais90kg++;
    }

    totalIdades += idade;
  }

  if (pessoasMais90kg == 1) {
    print("Há 1 pessoa com mais de 90kg.");
  } else {
    print("Há $pessoasMais90kg pessoas com mais de 90kg.");
  }

  var mediaIdades = (totalIdades / totalPessoas).round();

  print("A idade média das pessoas é de $mediaIdades anos.");
}
