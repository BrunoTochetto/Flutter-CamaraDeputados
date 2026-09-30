// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Proposicoes {
  int id;
  String uri;
  String siglaTipo;
  int codTipo;
  int numero;
  int ano;
  String ementa;
  String dataApresentacao;

  Proposicoes({
    required this.id,
    required this.uri,
    required this.siglaTipo,
    required this.codTipo,
    required this.numero,
    required this.ano,
    required this.ementa,
    required this.dataApresentacao,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'uri': uri,
      'siglaTipo': siglaTipo,
      'codTipo': codTipo,
      'numero': numero,
      'ano': ano,
      'ementa': ementa,
      'dataApresentacao': dataApresentacao,
    };
  }

  factory Proposicoes.fromMap(Map<String, dynamic> map) {
    return Proposicoes(
      id: map['id'] as int,
      uri: map['uri'] as String,
      siglaTipo: map['siglaTipo'] as String,
      codTipo: map['codTipo'] as int,
      numero: map['numero'] as int,
      ano: map['ano'] as int,
      ementa: map['ementa'] as String,
      dataApresentacao: map['dataApresentacao'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Proposicoes.fromJson(String source) => Proposicoes.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Proposicoes(id: $id, uri: $uri, siglaTipo: $siglaTipo, codTipo: $codTipo, numero: $numero, ano: $ano, ementa: $ementa, dataApresentacao: $dataApresentacao)';
  }
}
