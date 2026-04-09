import 'dart:io';
import 'dart:math';
import 'dart:async';

void limparTela() {
  if (Platform.isWindows) {
    stdout.write('\x1B[2J\x1B[0;0H');
  } else {
    stdout.write('\x1B[2J\x1B[H');
  }
}

Future<void> main() async {
  print("------ CuidaPet ------");
  print("Digite seu nome:");
  String? nome = stdin.readLineSync()!;

  bool a = true;
  while(a == true){
  
  print("\nPrezado(a) $nome, seja bem-vindo(a) à nossa loja!");
  print("Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o coloaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto.");
  print("Obrigado e esperamos que tenha uma ótima experiência em nossa loja! \n");

  String endereco = "Rua Tchongo, 270 - Carvalhópolis, MG";
  String telefone = "(35) 97713-0385";
  print("endereço: $endereco");
  print("Telefone: $telefone \n");

  bool d = true;
  while(d == true){
  print("Escolha uma opção:  1 - Ver ofertas de Produtos, 2 - Ver ofertas de Serviços, 3 - Roupas em oferta, 4 - Novos serviços oferecidos, 5 - Promoção I 10% de desconto, 6 - Promoção II 20% de desconto e 7 - Sair");
  int opcao = int.parse(stdin.readLineSync()!);
  switch (opcao) {
    case 1:
    limparTela();
      print("\nOfertas de Produtos:");
      print("- Ração Premium para cães: 20% de desconto");
      print("- Brinquedos interativos para gatos: 15% de desconto");
      print("- Camas confortáveis para pets: 10% de desconto \n");
      d = false;
      await Future.delayed(Duration(seconds: 2));
      break;
    case 2:
    limparTela();
      print("\nOfertas de Serviços:");
      print("- Banho e tosa para cães: 25% de desconto");
      print("- Banho e tosa para gatos: 20% de desconto");
      print("- Consulta veterinária: 15% de desconto \n");
      d = false;
      await Future.delayed(Duration(seconds: 2));
      break;
    case 3:
    limparTela();
      print("\nRoupas em oferta:");
      print("- Casacos para cães: 30% de desconto");
      print("- Vestidos para gatos: 25% de desconto");
      print("- Acessórios para pets: 20% de desconto \n");
      d = false;
      await Future.delayed(Duration(seconds: 2));
      break;
    case 4:
    limparTela();
      print("\nNovos serviços oferecidos:");
      print("- Adestramento básico para cães");
      print("- Consultoria nutricional para pets");
      print("- Serviço de pet sitter para cuidados em casa \n");
      d = false;
      await Future.delayed(Duration(seconds: 2));
      break;
    case 5:
    limparTela();
      print("\nDescrição da promoção I: Compre um saco de 15kg de ração (R\$ 345,99) e ganhe 10% de desconto no banho.");
      print("Valor do banho com desconto: R\$ ${345.99 * 0.9} \n");
      d = false;
      await Future.delayed(Duration(seconds: 2));
      break;
    case 6:
    limparTela();
      print("\nDescrição da promoção II: Compre um saco de 15kg de ração (R\$ 345,99) e ganhe 20% de desconto no banho.");
      print("Valor do banho com desconto: R\$ ${345.99 * 0.8} \n");
      d = false;
      await Future.delayed(Duration(seconds: 2));
      break;
      case 7:
      limparTela();
      a = false;
      d = false;
      break;
    default:
      print("\nOpção inválida. Por favor, escolha uma opção entre 1 e 6. \n");
  }
}
  }

}