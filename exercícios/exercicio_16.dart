/* Uma loja tem tem uma política de descontos de acordo com o valor da compra do cliente. 
Os descontos começam acima dos R$500. A cada 100 reais acima dos R$500,00 o cliente ganha 1% de desconto 
cumulativo até 25%. 

 Por exemplo: R$500 = 1% || R$600,00 = 2% … etc…
 Faça um programa que exiba essa tabela de descontos no seguinte formato:  
 Valordacompra – porcentagem de desconto – valor final*/

main() {
  int porcentagem = 1;

  print("Valor da Compra | Percentual de Desconto | Valor Final ");

  for (int valorDaCompra = 500; valorDaCompra <= 3000; valorDaCompra += 100) {
    var desconto = valorDaCompra * (porcentagem * 0.01);
    var valorFInal = valorDaCompra - desconto;

    if (porcentagem > 25) {
      porcentagem = 25;
    }

    print("$valorDaCompra | $porcentagem% | $valorFInal");

    porcentagem++;
  }
}
