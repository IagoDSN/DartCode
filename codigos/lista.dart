import 'dart:io';
import 'dart:math';

void main(){
  var vogais = [];
  List notas = [7.5, 8.0, 6.0, 9.0];
  List<String> nomes = ["Alice", "Bob", "Charlie", "Diana"];

  List numeros2 = [];

  print("Notas: $notas");
  print(notas[2]);
  print(notas.first);
  print(notas.last);
  for (int i = 0; i < notas.length; i++) {
    print(notas[i]);
  }
  for (var nota in notas) {
    print(nota);
  }
  notas.forEach(print);
  print(notas.isEmpty);
  print(vogais.isEmpty);
  print(notas.length);
  print(notas.contains(8.0));
  print(notas.contains(10.0));
  notas.add(10.0);

  vogais.addAll(['a', 'e', 'i', 'o', 'u']);
  vogais.insert(0, 'y');
  print(vogais);

  for (int i = 0; i <= 5; i++) {
    print("digite um numero:");
    var numero = int.parse(stdin.readLineSync()!);
    numeros2.add(numero);
  }
  print(numeros2);
}