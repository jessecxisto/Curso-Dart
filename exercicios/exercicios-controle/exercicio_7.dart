//Faça um programa que verifique e mostre os números entre 1.000 e 2.000 (inclusive) que, quando divididos
//por 11 produzam resto igual a 2.

main() {
  print(
      "Esses são os números entre 1000 e 2000 cujo o resto da divisão por 11 é 2: ");
  for (int contador = 1000; contador <= 2000; contador++) {
    if (contador % 11 == 2) {
      print(contador);
    } else
      ;
  }
}
