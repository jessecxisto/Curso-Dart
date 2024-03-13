import 'dart:io';

main() {
  stdout.write("Digite um número para gerar uma tabuada: ");
  var entradaDoUsuario = stdin.readLineSync()!;
  var numero = int.parse(entradaDoUsuario);

  for (int contador = 1; contador <= 10; contador++) {
    print("$numero X $contador = " + (numero * contador).toString());
  }
}
