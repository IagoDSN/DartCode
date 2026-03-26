import 'dart:io';
  void main() {
  print("Digite o ano do seu carro:");
  int anoCarro = int.parse(stdin.readLineSync()!);

  if (anoCarro <= 2000) {
    print("Carro antigo");
  } else if (anoCarro >= 2001 && anoCarro <= 2010) {
    print("Carro semi-novo");
  } else {
    print("Carro novo");
  }
}