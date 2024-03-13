import 'dart:io';

void main(List<String> args) {
  const PI = 3.1415;
  print("Calculadora de área da circunferência");
  stdout.write("Informe o valor do raio: ");
  final entradaDoUsuario = stdin.readLineSync()!;
  final raio = double.parse(entradaDoUsuario);

  print("A área da circunferência é: " + (PI + raio * raio).toString());
}
