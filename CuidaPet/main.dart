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
}