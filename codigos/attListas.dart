import 'dart:io';

void main() {
  List numeros = [];
  for (int i = 0; i < 5; i++) {
    print("Digite um número:");
    var numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }
  print("Números na ordem inversa:");
  for (int i = numeros.length - 1; i >= 0; i--) {
    print(numeros[i]);
  }
}