/*Faça um algoritmo que leia o valor do salário mínimo e o valor do salário de um usuário, calcule quantos salários mínimos esse 
usuário ganha e imprima na tela o resultado. (Base para o Salário mínimo R$ 1.293,20).
*/

import 'dart:io';

main() {
  final salarioMinimo = 1293.20;

  stdout.write("Digite seu salário: ");

  final entradaDoUsuario = stdin.readLineSync()!;
  final salarioUsuario = double.parse(entradaDoUsuario);

  final calculo = (salarioUsuario / salarioMinimo);
  final valorFinalArredondado = ((calculo) * 2).round() / 2;

  if (valorFinalArredondado <= 1) {
    print("Você recebe aproximadamente $valorFinalArredondado salário mínimo.");
  } else {
    print(
        "Você recebe aproximadamente $valorFinalArredondado salários mínimos.");
  }
}
