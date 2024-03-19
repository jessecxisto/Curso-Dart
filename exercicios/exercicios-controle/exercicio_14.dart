/*Faça um programa que receba a idade de 15 pessoas e que calcule e mostre:
a) A quantidade de pessoas em cada faixa etária;
b) A percentagem de pessoas na primeira e na última faixa etária, com relação ao total de pessoas: 

Até 15 anos
De 16 a 30 anos
De 31 a 45 anos
De 46 a 60 anos
Acima de 61 anos*/
import 'dart:io';

main() {
  int pessoasAte15anos = 0;
  int pessoas16a30anos = 0;
  int pessoas31a45anos = 0;
  int pessoas46a60anos = 0;
  int pessoas61anosMais = 0;
  int totalPessoas = 15;

  for (int i = 1; i <= totalPessoas; i++) {
    stdout.write("(Pessoa $i) Digite sua idade: ");
    int idade = int.parse(stdin.readLineSync()!);

    if (idade <= 15) {
      pessoasAte15anos++;
    } else if (idade >= 16 && idade <= 30) {
      pessoas16a30anos++;
    } else if (idade >= 31 && idade <= 45) {
      pessoas31a45anos++;
    } else if (idade >= 46 && idade <= 60) {
      pessoas46a60anos++;
    } else {
      pessoas61anosMais++;
    }
  }
  var somaPrimeiraeUltimaFaixaEtaria = pessoasAte15anos + pessoas61anosMais;
  double porcentagem = (somaPrimeiraeUltimaFaixaEtaria / totalPessoas) * 100;

  print(
      "A quantidade de pessoas com idade até 15 anos é: $pessoasAte15anos pessoa(s)");
  print(
      "A quantidade de pessoas com idade entre 16 e 30 anos é: $pessoas16a30anos pessoa(s)");
  print(
      "A quantidade de pessoas com idade entre 31 e 45 anos é: $pessoas31a45anos pessoa(s)");
  print(
      "A quantidade de pessoas com idade entre 46 e 60 anos é: $pessoas46a60anos pessoa(s)");
  print(
      "A quantidade de pessoas com idade maior que 61 anos é: $pessoas61anosMais pessoa(s)");
  print(
      "Em média $porcentagem% das pessoas tem até de 15 anos ou mais de 61 anos. ");
}
