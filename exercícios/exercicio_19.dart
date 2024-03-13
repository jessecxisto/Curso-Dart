/*Faça um programa que receba a idade, o peso, a altura, a cor dos olhos (A – Azul, P- Preto, V- Verde e 
C- Castanho) e a cor dos cabelos (P – Preto, C- Castanho, L – Louro e R-Ruivo) de 20 pessoas e que calcule 
e mostre: 

A quantidade de pessoas com idade superior a 50 anos e peso inferior a 60 quilos;
A média das idades das pessoas com altura inferior a 1,50;
A porcentagem de pessoas com olhos azuis entre as pessoas analisadas;
A quantidade de pessoas ruivas que não possuem olhos azuis;  */

import 'dart:io';

main() {
  int totalPessoas = 20;
  int pessoasMais50AnosEPesoMenos60kg = 0;
  int idadePessoasMenores150 = 0;
  int pessoasComOlhosAzuis = 0;
  int pessoasRuivasSemOlhosAzuis = 0;
  int quantidadePessoasMenores150 = 0;
  List<String> coresCabeloValidas = ["P", "C", "L", "R"];
  String corDoCabelo = "";
  List coresOlhosValidas = ["P", "C", "A", "V"];
  String corDosOlhos = "";

  for (int i = 1; i <= totalPessoas; i++) {
    stdout.write("(Pessoa $i) Digite sua idade: ");
    int idade = int.parse(stdin.readLineSync()!);

    stdout.write("(Pessoa $i) Digite seu peso: ");
    double peso = double.parse(stdin.readLineSync()!);

    stdout.write("(Pessoa $i) Digite sua altura: ");
    double altura = double.parse(stdin.readLineSync()!);

    do {
      stdout.write(
          "(Pessoa $i) Digite a cor dos seus olhos (P – Preto, C - Castanho A - Azul, V - Verde):  ");
      corDosOlhos = stdin.readLineSync()!.toUpperCase();

      if (!coresOlhosValidas.contains(corDosOlhos)) {
        print("Você não inseriu uma cor de olhos  válida. Tente novamente.");
      }
    } while (!coresOlhosValidas.contains(corDosOlhos));

    do {
      stdout.write(
          "(Pessoa $i) Digite a cor do seu cabelo (P - Preto, C - Castanho, L - Loiro, R - Ruivo): ");
      corDoCabelo = stdin.readLineSync()!.toUpperCase();

      if (!coresCabeloValidas.contains(corDoCabelo)) {
        print("Você não inseriu uma cor de cabelo válida. Tente novamente.");
      }
    } while (!coresCabeloValidas.contains(corDoCabelo));

    if (idade > 50 && peso < 60) {
      pessoasMais50AnosEPesoMenos60kg++;
    }

    if (altura < 1.50) {
      idadePessoasMenores150 += idade;
      quantidadePessoasMenores150++;
    }

    if (corDosOlhos == "A") {
      pessoasComOlhosAzuis++;
    }

    if (corDoCabelo == "R" && corDosOlhos != "A") {
      pessoasRuivasSemOlhosAzuis++;
    }
  }

  print(
      "Há $pessoasMais50AnosEPesoMenos60kg pessoas com mais de 50 anos e menos de 60kg. ");

  double mediaIdadePessoasMenores150 =
      idadePessoasMenores150 / quantidadePessoasMenores150;
  print(
      "A idade média das pessoas com altura inferior à 1.50m é de $mediaIdadePessoasMenores150 anos. ");

  if (pessoasComOlhosAzuis > 0) {
    double porcentagemPessoasComOlhosAzuis =
        (pessoasComOlhosAzuis / totalPessoas) * 100;
    print("$porcentagemPessoasComOlhosAzuis% das pessoas têm olhos azuis. ");
  } else {
    print("Nenhuma das pessoas tem olhos azuis. ");
  }

  print(
      "Há $pessoasRuivasSemOlhosAzuis pessoas ruivas que não possuem olhos azuis. ");
}
