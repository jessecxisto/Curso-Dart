// Faça um programa que mostre as tabuadas dos números de 1 a 10 usando laços de repetição.

main() {
  for (int multiplicando = 1; multiplicando <= 10; multiplicando++) {
    print("Tabuada do $multiplicando:");

    for (int multiplicador = 1; multiplicador <= 10; multiplicador++) {
      int produto = multiplicando * multiplicador;
      print("$multiplicando x $multiplicador = $produto.");
    }
  }
}
