// break -> Interrompe o laço e executa a próxima linha fora do laço.
// continue -> Ignora apenas aquela condição e segue o laço.

main() {
  for (int a = 0; a < 10; a++) {
    if (a == 6) {
      break;
    }
    print(a);
  }

  print("Depois do laço for #01");

  for (int a = 0; a < 10; a++) {
    if (a % 2 == 0) {
      continue;
    }
    print(a);
  }

  print("Depois do laço for #02");
}
