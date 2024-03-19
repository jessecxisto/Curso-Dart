import 'dart:math';

main() {
  int resultado = somar(2, 3);
  resultado *= 2;
  print("O dobro do resultado é $resultado");

  print("O resultado é ${somarNumerosAleatorios()}");
}

// Função com parâmetros obrigatórios que retorna algo.
int somar(int a, int b) {
  return a + b;
}

//Função sem parâmetros de entrada que retorna algo.
int somarNumerosAleatorios() {
  int a = Random().nextInt(11);
  int b = Random().nextInt(11);
  return a + b;
}
