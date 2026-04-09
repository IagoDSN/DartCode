import 'dart:io';
  void main() {
  /*18 – Construa um programa que receba um número inteiro e verifique se o mesmo é primo. Um número é classificado como primo se ele é maior do que um e é divisível apenas por um e por ele mesmo. Exemplo de números primos: 2,3,5,7,11,13.*/
  print("Digite um número inteiro:");
  int numero = int.parse(stdin.readLineSync()!);
  bool primo = true;
  if (numero <= 1) {
    primo = false;
  } else {
    for (int i = 2; i <= numero ~/ 2; i++) {
      if (numero % i == 0) {
        primo = false;
        break;
      }
    }
  }
  if (primo) {
    print("$numero é um número primo.");
  } else {
    print("$numero não é um número primo.");
  }
}