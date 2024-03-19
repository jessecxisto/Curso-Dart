// Faça um programa que receba a idade de dez pessoas e que calcule e mostre a quantidade de pessoas
//com idade maior ou igual a 18 anos.

import 'dart:io';

main() {
  var quantidadePessoas = 10;
  var pessoasMaior18 = 0;

  for (var contador = 1; contador >= quantidadePessoas; contador++) {
    stdout.write("Digite a idade da pessoa$contador ");
    int idade = int.parse(stdin.readLineSync()!);

    if (idade >= 18) {
      pessoasMaior18++;
    }
    print("$pessoasMaior18 pessoas são maiores de idade. ");
  }
}
