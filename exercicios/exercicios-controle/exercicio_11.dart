/*Faça um programa que receba a idade, altura e o peso de 25 pessoas, Calcule e mostre:
A quantidade de pessoas com idade superior a 50 anos;
A média das Alturas das pessoas com idade entre 10 e 20 anos
A porcentagem das pessoas com peso inferior a 40 quilos entre todas as pessoas analisadas. */

import 'dart:io';

main() {
  int numeroDePessoas = 25;
  int pessoasMais50anos = 0;
  int pessoasMenos40kg = 0;
  int pessoasEntre10e20anos = 0;
  double somaAlturas = 0;

  for (var i = 1; i <= numeroDePessoas; i++) {
    stdout.write("Pessoa($i) digite sua idade: ");
    double idade = double.parse(stdin.readLineSync()!);

    stdout.write("Pessoa($i) digite sua altura em metros: ");
    double altura = double.parse(stdin.readLineSync()!);

    stdout.write("Pessoa($i) digite seu peso em quilogramas: ");
    double peso = double.parse(stdin.readLineSync()!);

    if (idade >= 50) {
      pessoasMais50anos++;
    } else if (idade >= 10 && idade <= 20) {
      pessoasEntre10e20anos++;
      somaAlturas += altura;
    }

    if (peso < 40) {
      pessoasMenos40kg++;
    }
  }
  var mediaDeAltura = (somaAlturas / pessoasEntre10e20anos).toStringAsFixed(2);

  var porcentagemPessoasComMenos40kg =
      (pessoasMenos40kg / numeroDePessoas) * 100;

  print(
      "A quantidade de pessoas com mais de 50 anos é de $pessoasMais50anos pessoa(s).");
  print("A média de altura de pessoas entre 10 e 20 anos é $mediaDeAltura\m.");
  print(
      "A porcentagem de pessoas com peso menor que 40kg é de $porcentagemPessoasComMenos40kg% ");
}
