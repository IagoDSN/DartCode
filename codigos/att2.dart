import 'dart:io';
import 'dart:math';

void main(){
  /*
  double precoFralda = 1.10;
  int quantBebeUsa = 4;

  double gastoMensal = precoFralda * quantBebeUsa * 30;
  print("O gasto mensal com fraldas é: R\$ $gastoMensal");
  */

  /*
  print("Digite um valor:");
  int valor = int.parse(stdin.readLineSync()!);
  print("A terça parte do valor é: ${valor / 3}");
  */

  print("Digite seu peso em kg:");
  double peso = double.parse(stdin.readLineSync()!);
  double quantAgua = peso * 0.040;
  print("A quantidade de água necessária é: $quantAgua litros");
}