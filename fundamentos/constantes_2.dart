/*
final => valor da variável não pode ser alterado
const => valor da variável pode ser alterado, porém não se pode adicionar elementos se isso não acontecer
*/

main() {
  final lista1 = ["Banana", "Maçã"];
  print(lista1);
  lista1.add("Morango");
  print(lista1);
  //lista1 = ["Alface", "Cenoura"]; // Não é possível

  var lista2 = const ["Leão", "Tigre"];
  print(lista2);
  //lista2.add("Leopardo"); // Não é possível
  //print(lista2);
  lista2 = ["Porco", "Vaca"];
  lista2.add("Ovelha");
  print(lista2);
}
