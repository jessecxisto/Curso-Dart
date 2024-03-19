//Uma loja deseja cadastrar 5 clientes e verificar se o faturamento da loja foi superior a loja B
//(faturamento = 54000).  Se o faturamento atingir esse valor mostre na tela uma mensagem contendo em
//quanto foi superado o faturamento.

import 'dart:io';

main() {
  var clientes = 5;
  var faturamentoLojaB = 54000.00;
  var faturamentoAtual = 0.0;

  for (var contador = 0; contador <= clientes; contador++) {
    stdout.write("Insira o faturamento do cliente $contador: ");
    var faturamentoCliente = double.parse(stdin.readLineSync()!);

    faturamentoAtual += faturamentoCliente;
  }

  var diferencaDeFaturamento = faturamentoAtual - faturamentoLojaB;
  if (faturamentoAtual >= faturamentoLojaB) {
    print("O faturamento superou R\$: 54.000");
    print("A diferença foi de R\$ $diferencaDeFaturamento.");
  } else {
    print("O faturamento não superou R\$: 54.000");
  }
}
