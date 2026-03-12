import 'dart:io';
import 'dart:math';

void main(){

  String curso = "Dart";
  int idade = 30;
  double altura = 1.75;

  print("Curso: $curso");
  print("Idade: $idade");
  print("Altura: $altura metros");

  var curso2 = "flutter";
  var idade2 = 25;
  print("Curso: $curso2");
  print("Idade: $idade2");

  // idade = "Tecnico em informatica"; // Erro de tipo, não é possível atribuir uma string a uma variável do tipo int
  // idade2 = 3.14; // Erro de tipo, não é possível atribuir um double a uma variável do tipo int

  var idade3;
  idade3 = 40;
  print("Idade3: $idade3");
  idade3 = "Quarenta";
  print("Idade3: $idade3");

  dynamic idade4;
  idade4 = 50;
  print("Idade4: $idade4");
  idade4 = "Cinquenta";
  print("Idade4: $idade4");

  String meuNome = "Iago";
  int minhaIdade = 16;
  print("Meu nome é $meuNome e minha idade é $minhaIdade anos.");

  String nomeCompleto = "Iago Nunes";
  print("Meu nome completo é $nomeCompleto.");
  print(nomeCompleto.toUpperCase());
  print(nomeCompleto.toLowerCase());
  print(nomeCompleto.length);

  String? TelResidencial;
  print(TelResidencial ?? "Número de telefone residencial não informado.");
  String? TelResidencial2 = "123456789";
  print(TelResidencial2 ?? "Número de telefone residencial não informado.");

  print(pow(5, 2));
  print(sqrt(81));

  //constantes
  const pi = 3.14;
  print("O valor de pi é aproximadamente $pi.");

  print("Digite seu nome:");
  String? nomeMeu = stdin.readLineSync()!;
  print("Olá, $nomeMeu Bem-vindo ao Dart.");

  print("Digite um valor:");
  String? valor = stdin.readLineSync()!;
  print(int.parse(valor) + 2);
  
  print("Digite outro valor:");
  int? valor2 = int.parse(stdin.readLineSync()!);
  print("o valor digitado foi $valor2 e somado a 2 é ${valor2 + 2}");

}