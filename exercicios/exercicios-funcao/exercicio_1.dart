/*Difícil 43-  Faça um programa que apresente o menu de opções a seguir, que permita ao usuário escolher a 
opção desejada, receba os dados necessários para executar a operação e mostre o resultado. 
Verificar a possibilidade de opção inválida e não se preocupar com as restrições, como salário inválido.  

Menu de opções:  

1. Novo salário
2. Férias
3. Décimo terceiro
4. Sair  
Digite a opção desejada :

Na Opção 1: receber o salário de um funcionário, calcular e mostrar o novo salário usando as regras a 
seguir.  

Salários	Percentagem de aumento
Até R$ 350,00	15%
De R$ 350,00 a R$ 600,00	10%
Acima de R$ 600,00	5%
Na opção 2: receber o salário de um funcionário, calcular e mostrar o valor de suas férias. 
Sabe-se que as férias equivalem ao seu salário acrescido de 1/3.  

Na opção 3: receber o salário de um funcionário e o número de meses de trabalho na empresa, no máximo 12, 
calcular e mostrar o valor do décimo terceiro. Sabe-se que o décimo terceiro equivale ao seu salário 
multiplicado pelo número de meses de trabalho dividido por 12.  

Na opção 4: sair do programa.  */

import 'dart:io';

void novoSalario() {
  stdout.write("Digite seu salário: ");
  try {
    double salario = double.parse(stdin.readLineSync()!);

    if (salario <= 350) {
      print(
          "Seu novo salário é: R\$${(salario + salario * 0.15).toStringAsFixed(2)}");
    } else if (salario > 350 && salario <= 600) {
      print(
          "Seu novo salário é: R\$${(salario + salario * 0.10).toStringAsFixed(2)}");
    } else {
      print(
          "Seu novo salário é: R\$${(salario + salario * 0.05).toStringAsFixed(2)}");
    }
  } catch (e) {
    print("Valor inválido! Por favor, digite um número válido para o salário.");
  }
}

void ferias() {
  stdout.write("Digite seu salário: ");
  try {
    double salario = double.parse(stdin.readLineSync()!);
    print(
        "Nas férias você receberà: R\$${(salario + (salario / 3)).toStringAsFixed(2)}");
  } catch (e) {
    print("Valor inválido! Por favor, digite um número válido para o salário.");
  }
}

void decimoTerceiro() {
  stdout.write("Digite seu salário: ");
  try {
    double salario = double.parse(stdin.readLineSync()!);

    double mesesDeTrabalho = 0;
    do {
      stdout.write(
          "Digite há quantos meses você trabalha na empresa (Máximo 12): ");
      mesesDeTrabalho = double.parse(stdin.readLineSync()!);

      if (mesesDeTrabalho > 12) {
        print("Quantidade de meses inválida, por favor tente novamente. ");
      } else {
        print(
            "Seu décimo terceiro é de R\$${(salario * mesesDeTrabalho / 12).toStringAsFixed(2)}");
      }
    } while (mesesDeTrabalho > 12);
  } catch (e) {
    print("Valor inválido! Por favor, digite um número válido para o salário.");
  }
}

void main() {
  int opcao = 0;

  do {
    do {
      print("Menu de Opções: ");
      print("1. Novo Salário");
      print("2. Férias");
      print("3. Décimo Terceiro");
      print("4. Sair");
      stdout.write("Digite a opção desejada: ");
      try {
        opcao = int.parse(stdin.readLineSync()!);

        if (opcao < 1 || opcao > 4) {
          print("Opção inválida, por favor tente novamente. ");
        }
      } catch (e) {
        print(
            "Valor inválido! Por favor, digite um número correspondente à opção desejada.");
      }
    } while (opcao < 1 || opcao > 4);

    switch (opcao) {
      case 1:
        novoSalario();
        break;
      case 2:
        ferias();
        break;
      case 3:
        decimoTerceiro();
        break;
      case 4:
        print("Saindo...");
        break;
    }
  } while (opcao != 4);
}
