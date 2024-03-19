/*Faça um programa que usando laços de repetição receba a idade e o peso de 15 pessoas. Calcule e mostre as médias dos pesos das pessoas da mesma faixa etária. 
As faixas etárias são: de 1 a 10 anos, de ll a 20 anos, de 21 a 30 anos e maiores de 31 anos.  */

import 'dart:io';

main() {
  int totalPessoasDe1a10 = 0;
  int totalPessoasDe11a20 = 0;
  int totalPessoasDe21a30 = 0;
  int totalPessoas31mais = 0;
  double pesoPessoasDe1a10 = 0;
  double pesoPessoasDe11a20 = 0;
  double pesoPessoasDe21a30 = 0;
  double pesoPessoas31mais = 0;
  double quantidadeDePessoas = 15;

  for (int i = 1; i <= quantidadeDePessoas; i++) {
    stdout.write("(Pessoa $i) Digite sua idade: ");
    var idade = int.parse(stdin.readLineSync()!);
    if (idade < 1) {
      print("Idade inválida, precisa ter no mínimo 1 ano.");
      i--; // Decrementa o contador para repetir a entrada desta pessoa
      continue; // Pula para a próxima iteração do loop
    }

    stdout.write("(Pessoa $i) Digite seu peso: ");
    var peso = double.parse(stdin.readLineSync()!);

    if (idade >= 1 && idade <= 10) {
      pesoPessoasDe1a10 += peso;
      totalPessoasDe1a10++;
    } else if (idade >= 11 && idade <= 20) {
      pesoPessoasDe11a20 += peso;
      totalPessoasDe11a20++;
    } else if (idade >= 21 && idade <= 30) {
      pesoPessoasDe21a30 += peso;
      totalPessoasDe21a30++;
    } else {
      pesoPessoas31mais += peso;
      totalPessoas31mais++;
    }
  }
  var mediaPesoPessoas1a10 = pesoPessoasDe1a10 / totalPessoasDe1a10;
  var mediaPesoPessoas11a20 = pesoPessoasDe11a20 / totalPessoasDe11a20;
  var mediaPesoPessoas21a30 = pesoPessoasDe21a30 / totalPessoasDe21a30;
  var mediaPesoPessoas31mais = pesoPessoas31mais / totalPessoas31mais;

  print(
      "A média de peso das pessoas com idade entre 1 e 10 anos é ${mediaPesoPessoas1a10.toStringAsFixed(1)}kg.");
  print(
      "A média de peso das pessoas com idade entre 11 e 20 anos é ${mediaPesoPessoas11a20.toStringAsFixed(1)}kg.");
  print(
      "A média de peso das pessoas com idade entre 21 e 30 anos é ${mediaPesoPessoas21a30.toStringAsFixed(1)}kg.");
  print(
      "A média de peso das pessoas com idade maior que 30 anos é ${mediaPesoPessoas31mais.toStringAsFixed(1)}kg.");
}
