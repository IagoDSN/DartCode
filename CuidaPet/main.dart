import 'dart:io';
import 'dart:math';

void main(){
  print("------ CuidaPet ------");
  print("Digite seu nome:");
  String? nome = stdin.readLineSync()!;
  print("Prezado(a) $nome, seja bem-vindo(a) à nossa loja!");
  print("Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o coloaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto.");
  print("Obrigado e esperamos que tenha uma ótima experiência em nossa loja!");

  String endereco = "Rua Tchongo, 270 - Carvalhópolis, MG";
  String telefone = "(35) 97713-0385";
  print("endereço: $endereco");
  print("Telefone: $telefone");

  bool d = true;
  while(d == true){
  print("Escolha uma opção:  1 - Ver ofertas de Produtos, 2 - Ver ofertas de Serviços, 3 - Roupas em oferta, 4 - Novos serviços oferecidos, 5 - Promoção I 10% de desconto e 6 - Promoção II 20% de desconto.");
  int opcao = int.parse(stdin.readLineSync()!);
  switch (opcao) {
    case 1:
      print("Ofertas de Produtos:");
      print("- Ração Premium para cães: 20% de desconto");
      print("- Brinquedos interativos para gatos: 15% de desconto");
      print("- Camas confortáveis para pets: 10% de desconto");
      d = false;
      break;
    case 2:
      print("Ofertas de Serviços:");
      print("- Banho e tosa para cães: 25% de desconto");
      print("- Banho e tosa para gatos: 20% de desconto");
      print("- Consulta veterinária: 15% de desconto");
      d = false;
      break;
    case 3:
      print("Roupas em oferta:");
      print("- Casacos para cães: 30% de desconto");
      print("- Vestidos para gatos: 25% de desconto");
      print("- Acessórios para pets: 20% de desconto");
      d = false;
      break;
    case 4:
      print("Novos serviços oferecidos:");
      print("- Adestramento básico para cães");
      print("- Consultoria nutricional para pets");
      print("- Serviço de pet sitter para cuidados em casa");
      d = false;
      break;
    case 5:
      print("Descrição da promoção I: Compre um saco de 15kg de ração (R\$ 345,99) e ganhe 10% de desconto no banho.");
      print("Valor do banho com desconto: R\$ ${345.99 * 0.9}");
      d = false;
      break;
    case 6:
      print("Descrição da promoção II: Compre um saco de 15kg de ração (R\$ 345,99) e ganhe 20% de desconto no banho.");
      print("Valor do banho com desconto: R\$ ${345.99 * 0.8}");
      d = false;
      break;
    default:
      print("Opção inválida. Por favor, escolha uma opção entre 1 e 6.");
  }
}

}