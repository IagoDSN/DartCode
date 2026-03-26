import 'dart:io';
import 'dart:math';

void main(){
  int idade;
  print("Digite sua idade:");
  idade = int.parse(stdin.readLineSync()!);
  if (idade >= 18) {
    print("Você é maior de idade.");
  } else {
    print("Você é menor de idade.");
  }

  print(idade >= 18 ? "Você é maior de idade." : "Você é menor de idade.");

  int valor ;
  print("Digite um valor:");
  valor = int.parse(stdin.readLineSync()!);
  if (valor > 0) {
    print("O valor é positivo.");
  } else if (valor < 0) {
    print("O valor é negativo.");
  } else {
    print("O valor é zero.");
  }
}