/*  Faça um programa que receba o valor de um carro e mostre uma tabela com os seguintes dados: 
preço final, quantidade de parcelas e valor da parcela. Considere o seguinte:

O preço final para compra à vista tem um desconto de 20%;
A quantidades de parcelas pode ser: 6, 12, 18, 24, 30, 36, 42, 48, 54 e 60.
Os percentuais de acréscimo seguem a tabela a seguir.  

Quantidade de parcelas | Percentual de acréscimo sobre o preço final
6	 | 3%
12 | 6%
18 | 9%
24 | 12%
30 | 15%
36 | 18%
42 | 21%
48 | 24%
54 | 27%
60 | 30%
*/

import 'dart:io';

main() {
  var percentualDeAcrescimo = 0;
  var maximoDeParcelas = 60;

  stdout.write("Digite o valor do carro: ");
  var valorDoCarro = double.parse(stdin.readLineSync()!);

  print("Preço Final | Quantidade de Parcelas | Valor da Parcela");

  for (int quantidadeDeParcelas = 0;
      quantidadeDeParcelas <= maximoDeParcelas;
      quantidadeDeParcelas += 6) {
    var acrescimo = valorDoCarro * (percentualDeAcrescimo * 0.01);

    var desconto = valorDoCarro - (valorDoCarro * 0.20);

    var precoFinal = valorDoCarro + acrescimo;

    var valorDaParcela = precoFinal / quantidadeDeParcelas;

    if (quantidadeDeParcelas == 0) {
      print("R\$: ${desconto.toStringAsFixed(2)} | À vista | À vista ");
    } else {
      print(
          "R\$: ${precoFinal.toStringAsFixed(2)} | $quantidadeDeParcelas | R\$: ${valorDaParcela.toStringAsFixed(2)}");
    }

    percentualDeAcrescimo += 3;
  }
}
