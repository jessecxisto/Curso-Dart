import 'dart:io';

void main() {
  stdout.write("Digite um número inteiro e positivo: ");
  int n = int.parse(stdin.readLineSync()!);

  double soma = 0;

  for (int i = 1; i <= n; i++) {
    soma += 1 / i;
  }

  print("A soma é: $soma");
}
