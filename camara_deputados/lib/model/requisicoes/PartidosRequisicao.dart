import '../partidos/partidos.dart';
import '../links.dart';

class PartidosRequisicao {
  List<Links> links;
  List<Partidos> dados;

  PartidosRequisicao({
    required this.links,
    required this.dados,
  });

  factory PartidosRequisicao.fromJson(Map<String, dynamic> json) {
    return PartidosRequisicao(
      links: List<Links>.from(json['links'].map(
        (x) => Links.fromJson(x)
      )),
      dados: List<Partidos>.from(json['dados'].map(
        (x) => Partidos.fromJson(x)
      )),
    );
  }
}