import 'dart:io';

// VARIÁVEL GLOBAIS
int quantidadeVendasDia = 0;
double valorTotalVendasDia = 0.0;


// FUNÇÃO DE LIMPEZA DE TELA
void limparTela() {
  if (Platform.isWindows) {
    stdout.write('\x1B[2J\x1B[0;0H');
  } else {
    stdout.write('\x1B[2J\x1B[H');
  }
}
void main() {
  bool rodando = true;

  while (rodando) {
    limparTela();
    print("Bem vindo ao autoatendimento do Cuidapet");
    print("Por favor, digite o seu nome (ou '0' para encerrar o sistema):");
    String nomeCliente = stdin.readLineSync()?.trim() ?? "";

    if (nomeCliente == "0") {
      rodando = false;
      break;
    }

    if (nomeCliente == "cuidapetrestrito") {
      acessarAreaRestrita();
    } else {
      acessarAreaCliente(nomeCliente);
    }
  }

  exibirFechamentoDoDia();
}

// ÁREA DE FUNCIONÁRIOS
void acessarAreaRestrita() {
  limparTela();
  print("=== ÁREA RESTRITA DOS FUNCIONÁRIOS ===");
  print("Nome do cliente atendido:");
  String nomeAtendido = stdin.readLineSync() ?? "";

  print("Valor total gasto na loja (R\$):");
  double valorGasto = double.tryParse(stdin.readLineSync()?.replaceAll(',', '.') ?? '') ?? 0.0;

  print("Forma de pagamento (D - dinheiro ou C - cartão):");
  String formaPagamento = stdin.readLineSync()?.toUpperCase() ?? "C";

  double valorFinal = valorGasto;
  if (formaPagamento == "D" || formaPagamento == "DINHEIRO") {
    valorFinal = valorGasto * 0.90;
    print("Desconto de 10% aplicado!");
  }

  print("Valor final a ser pago pelo cliente $nomeAtendido: R\$ ${valorFinal.toStringAsFixed(2)}");
  
  quantidadeVendasDia++;
  valorTotalVendasDia += valorFinal;

  print("\nPressione ENTER para voltar ao início.");
  stdin.readLineSync();
}

// ÁREA DO CLIENTE
void acessarAreaCliente(String nomeCliente) {
  List<String> nomesCarrinho = [];
  List<double> precosCarrinho = [];
  bool menuCliente = true;

  while (menuCliente) {
    limparTela();
    print("Olá, $nomeCliente!");
    print("Opção 1 - Ver promoções.");
    print("Opção 2 - Solicitar serviço.");
    print("Opção 3 - Listar carrinho de compra.");
    print("Opção 4 - Finalizar carrinho de compra.");
    print("Opção 0 - Sair.");
    print("Digite sua opção desejada:");

    int opcao = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

    switch (opcao) {
      case 1:
        exibirMenuPromocoes(nomesCarrinho, precosCarrinho);
        break;
      case 2:
        exibirMenuServicos(nomesCarrinho, precosCarrinho);
        break;
      case 3:
        listarCarrinho(nomesCarrinho, precosCarrinho);
        break;
      case 4:
        bool compraFinalizada = finalizarCompra(nomeCliente, nomesCarrinho, precosCarrinho);
        if (compraFinalizada) {
          menuCliente = false;
        }
        break;
      case 0:
        menuCliente = false;
        break;
      default:
        print("\nOpção inválida. Pressione ENTER para tentar novamente.");
        stdin.readLineSync();
    }
  }
}

// MÓDULOS DO MENU DO CLIENTE
void exibirMenuPromocoes(List<String> nomes, List<double> precos) {
  bool menuPromo = true;
  while (menuPromo) {
    limparTela();
    print("=== PROMOÇÕES ===");
    print("Código 101 - Ração Royal Canin Indoor 7,5kg - R\$ 290,00");
    print("Código 102 - Ração Royal Canin Sterilised - R\$ 492,00");
    print("Código 103 - Bifinho Keldog - R\$ 23,92");
    print("Código 104 - Fraldas Descartáveis Super Secão (12 Unid) - R\$ 38,61");
    print("8 - Adicionar ao carrinho de compras.");
    print("0 - Voltar.");
    print("\nDigite sua opção desejada:");

    int opPromo = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

    if (opPromo == 0) {
      menuPromo = false;
    } else if (opPromo == 8) {
      adicionarItem(nomes, precos, "Produto");
    } else {
      print("Opção inválida. Pressione ENTER para continuar.");
      stdin.readLineSync();
    }
  }
}

void exibirMenuServicos(List<String> nomes, List<double> precos) {
  bool menuServico = true;
  while (menuServico) {
    limparTela();
    print("=== SERVIÇOS ===");
    print("Código 201 - Banho e tosa - R\$ 55,99");
    print("Código 202 - Tosa higienica - R\$ 12,99");
    print("Código 203 - Hidratação dos pelos - R\$ 20,99");
    print("8 - Adicionar ao carrinho de compras.");
    print("0 - Voltar.");
    print("\nDigite sua opção desejada:");

    int opServico = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

    if (opServico == 0) {
      menuServico = false;
    } else if (opServico == 8) {
      adicionarItem(nomes, precos, "Serviço");
    } else {
      print("Opção inválida. Pressione ENTER para continuar.");
      stdin.readLineSync();
    }
  }
}

void adicionarItem(List<String> nomes, List<double> precos, String tipo) {
  if (nomes.length >= 3) {
    print("\nSeu carrinho de compras já está cheio! (Máximo de 3 itens).");
    stdin.readLineSync();
    return;
  }

  print("Digite o código do $tipo que deseja adicionar:");
  int cod = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

  switch (cod) {
    // Produtos
    case 101:
      nomes.add("Ração Royal Canin Indoor 7,5kg");
      precos.add(290.00);
      print("$tipo adicionado!");
      break;
    case 102:
      nomes.add("Ração Royal Canin Sterilised");
      precos.add(492.00);
      print("$tipo adicionado!");
      break;
    case 103:
      nomes.add("Bifinho Keldog");
      precos.add(23.92);
      print("$tipo adicionado!");
      break;
    case 104:
      nomes.add("Fraldas Super Secão 12 Unidades");
      precos.add(38.61);
      print("$tipo adicionado!");
      break;
    
    // Serviços
    case 201:
      nomes.add("Banho e tosa");
      precos.add(55.99);
      print("$tipo adicionado!");
      break;
    case 202:
      nomes.add("Tosa higienica");
      precos.add(12.99);
      print("$tipo adicionado!");
      break;
    case 203:
      nomes.add("Hidratação dos pelos");
      precos.add(20.99);
      print("$tipo adicionado!");
      break;
      
    default:
      print("Código inválido!");
  }
  print("Pressione ENTER para continuar.");
  stdin.readLineSync();
}

void listarCarrinho(List<String> nomes, List<double> precos) {
  limparTela();
  print("=== SEU CARRINHO DE COMPRAS ===");
  if (nomes.isEmpty) {
    print("Seu carrinho está vazio.");
  } else {
    for (int i = 0; i < nomes.length; i++) {
      print("${i + 1} - ${nomes[i]} | R\$ ${precos[i].toStringAsFixed(2)}");
    }
  }
  print("\nPressione ENTER para voltar.");
  stdin.readLineSync();
}

bool finalizarCompra(String nomeCliente, List<String> nomes, List<double> precos) {
  limparTela();
  if (nomes.isEmpty) {
    print("Seu carrinho está vazio. Adicione itens antes de finalizar.");
    print("Pressione ENTER para voltar.");
    stdin.readLineSync();
    return false;
  } 
  
  print("=== FINALIZAR COMPRA ===");
  double totalCompra = 0;
  for (int i = 0; i < precos.length; i++) {
    totalCompra += precos[i];
  }
  
  print("Valor total dos itens: R\$ ${totalCompra.toStringAsFixed(2)}");
  print("Qual a forma de pagamento? (Dinheiro ou Cartao):");
  String formaPgto = stdin.readLineSync()?.toLowerCase() ?? "";

  double valorFinal = totalCompra;
  if (formaPgto == "dinheiro" || formaPgto == "d") {
    valorFinal = totalCompra * 0.90; // 10% de desconto
    print("Desconto de 10% aplicado para pagamento em dinheiro!");
  }

  print("\nValor final a pagar: R\$ ${valorFinal.toStringAsFixed(2)}");
  print("Compra finalizada com sucesso, $nomeCliente!");
  
  quantidadeVendasDia++;
  valorTotalVendasDia += valorFinal;
  
  print("\nPressione ENTER para encerrar sua sessão.");
  stdin.readLineSync();
  return true;
}

void exibirFechamentoDoDia() {
  limparTela();
  print("=== FECHAMENTO DO DIA ===");
  print("Sistema encerrado.");
  print("Quantidade total de vendas do dia: $quantidadeVendasDia");
  print("Valor total faturado no dia: R\$ ${valorTotalVendasDia.toStringAsFixed(2)}");
}