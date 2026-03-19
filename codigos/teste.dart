import 'dart:io';

void main() {
  print("Digite seu salário atual:");
  double salarioAtual = double.parse(stdin.readLineSync()!);
  double aumento = salarioAtual * 0.15;
  print("O valor do novo salário é: R\$ ${salarioAtual + aumento}");
}