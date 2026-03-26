import 'dart:io';
import 'dart:math';

void main(){
  // int idade;
  // print("Digite sua idade:");
  // idade = int.parse(stdin.readLineSync()!);
  // if (idade >= 18) {
  //   print("Você é maior de idade.");
  // } else {
  //   print("Você é menor de idade.");
  // }

  // print(idade >= 18 ? "Você é maior de idade." : "Você é menor de idade.");

  // int valor ;
  // print("Digite um valor:");
  // valor = int.parse(stdin.readLineSync()!);
  // if (valor > 0) {
  //   print("O valor é positivo.");
  // } else if (valor < 0) {
  //   print("O valor é negativo.");
  // } else {
  //   print("O valor é zero.");
  // }

  // int diaSemana;
  // print("Digite um número de 1 a 7 para representar o dia da semana:");
  // diaSemana = int.parse(stdin.readLineSync()!);
  // switch (diaSemana) {
  //   case 1:
  //     print("Domingo");
  //     break;
  //   case 2:
  //     print("Segunda-feira");
  //     break;
  //   case 3:
  //     print("Terça-feira");
  //     break;
  //   case 4:
  //     print("Quarta-feira");
  //     break;
  //   case 5:
  //     print("Quinta-feira");
  //     break;
  //   case 6:
  //     print("Sexta-feira");
  //     break;
  //   case 7:
  //     print("Sábado");
  //     break;
  //   default:
  //     print("Número inválido. Por favor, digite um número de 1 a 7.");
  // }

  for (int i = 1; i <= 10; i++) {
    print(i);
  }


  int d = 1;
  while (d <= 10) {
    print(d);
    d++;
  }

  int d2 = 10;
  do {
    print(d2);
    d2--;
  } while (d2 >= 1);

}