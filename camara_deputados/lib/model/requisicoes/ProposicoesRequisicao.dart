import '../proposicoes/proposicoes.dart';
import '../links.dart';

class ProposicoesRequisicao {
  List<Links> links;
  List<Proposicoes> dados;

  ProposicoesRequisicao({
    required this.links,
    required this.dados,
  });

  factory ProposicoesRequisicao.fromJson(Map<String, dynamic> json) {
    return ProposicoesRequisicao(
      links: List<Links>.from(json['links'].map(
        (x) => Links.fromJson(x)
      )),
      dados: List<Proposicoes>.from(json['dados'].map(
        (x) => Proposicoes.fromJson(x)
      )),
    );
  }
}