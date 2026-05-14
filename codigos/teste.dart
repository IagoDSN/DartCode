import 'dart:io';
int contarPalavras(String frase) {
  List palavras =
      frase.split(" ");
  return palavras.length;
}
void main() {
  print("Digite uma frase:");
  String frase =
      stdin.readLineSync()!;
  int quantidade =
      contarPalavras(frase);
  print(
    "Quantidade de palavras: $quantidade"
  );
}