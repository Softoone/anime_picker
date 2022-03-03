import 'dart:io';
import 'dart:math';

void main(List<String> arguments) async {
  // List<String> animes = [];
  Map<String, int> animes = {};
  List<String> rawList = [];

  print('Quantidade de animes a inserir: ');
  int numeroDeIndicacoes = int.parse(stdin.readLineSync()!);

  print('Insert animes name below: ');
  for (var i = 0; i < numeroDeIndicacoes; i++) {
    final entry = stdin.readLineSync();
    animes[entry!] = 0;
    rawList.add(entry);
  }

  definirPicks(animes, rawList);
  print(animes);
}

String sortearPicks(List<String> l) {
  Random drawer = Random();
  String pick = l[drawer.nextInt(l.length)];

  return pick;
}

void definirPicks(Map<String, int> m, List<String> l) {
  for (var i = 0; i <= 10; i++) {
    final pick = sortearPicks(l);
    m.update(pick, (value) => value + 1);
  }
}
