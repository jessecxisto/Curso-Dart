import 'dart:io';

main() {
  var candidatoA = 0;
  var candidatoB = 0;

  for (var contador = 1; contador <= 5; contador++) {
    print("Pessoa ($contador)");

    String entradaDoUsuario;

    do {
      stdout.write("Digite a letra do seu candidato (A ou B): ");
      entradaDoUsuario = stdin.readLineSync()!.toLowerCase();

      if (entradaDoUsuario == "a") {
        candidatoA++;
      } else if (entradaDoUsuario == "b") {
        candidatoB++;
      } else {
        print("Candidato indisponível. Digite A ou B.");
      }
    } while (entradaDoUsuario != "a" && entradaDoUsuario != "b");
  }

  print("Candidato A teve um total de $candidatoA votos");
  print("Candidato B teve um total de $candidatoB votos");
}
