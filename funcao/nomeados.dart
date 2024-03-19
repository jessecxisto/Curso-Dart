main() {
  saudarPessoa(nome: "João", idade: 33);
  saudarPessoa(idade: 60, nome: "Maria");

  imprimirData();
  imprimirData(ano: 2024);
  imprimirData(ano: 2024, mes: 03);
}

//Função nomeada.
saudarPessoa({String? nome, int? idade}) {
  print("Olá $nome nem parece que você tem $idade anos.");
}

imprimirData({int dia = 1, int mes = 1, int ano = 1970}) {
  print("$dia/$mes/$ano");
}
