// void -> Função que não retorna nada.

import 'dart:math';

void main() {
  somaComPrint(2, 3);

  int c = 4;
  int d = 5;
  somaComPrint(c, d);

  somaDoisNumerosQuaisquer();
}

// Função com parâmetros de entrada obrigatórios.
void somaComPrint(int a, int b) {
  print(a + b);
}

// Função sem parâmetros de entrada.
void somaDoisNumerosQuaisquer() {
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  print("$n1 + $n2 = ${n1 + n2}");
}
