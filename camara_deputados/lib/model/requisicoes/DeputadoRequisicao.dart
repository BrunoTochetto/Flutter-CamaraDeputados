import '../deputados/deputados.dart';
import '../links.dart';

class Deputadorequisicao {
  List<Links> links;
  List<Deputados> dados;

  Deputadorequisicao({
    required this.links,
    required this.dados,
  });

  factory Deputadorequisicao.fromJson(Map<String, dynamic> json) {
    return Deputadorequisicao(
      links: List<Links>.from(json['links'].map(
        (x) => Links.fromJson(x)
      )),
      dados: List<Deputados>.from(json['dados'].map(
        (x) => Deputados.fromJson(x)
      )),
    );
  }
}