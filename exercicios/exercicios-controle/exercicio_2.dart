/*Faça um algoritmo que leia dois valores inteiros A e B, se os valores de A e B forem iguais, deverá somar os dois valores, 
caso contrário devera multiplicar A por B. Ao final de qualquer um dos cálculos deve-se atribuir o resultado a uma variável C e
imprimir seu valor na tela.
*/

import 'dart:io';

main() {
  print("Digite dois números:");

  var entrada1 = stdin.readLineSync()!;
  var a = int.parse(entrada1);

  var entrada2 = stdin.readLineSync()!;
  var b = int.parse(entrada2);

  if (a == b) {
    var c = a + b;
    print("Os números são iguais então a soma deles é $c");
  } else {
    var c = a * b;
    print("Os números são diferntes então a multiplicação deles é $c");
  }
}
