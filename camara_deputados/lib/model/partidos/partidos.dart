// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Partidos {
  int id;
  String sigla;
  String nome;
  String uri;
  Partidos({
    required this.id,
    required this.sigla,
    required this.nome,
    required this.uri,
  });

  Partidos copyWith({
    int? id,
    String? sigla,
    String? nome,
    String? uri,
  }) {
    return Partidos(
      id: id ?? this.id,
      sigla: sigla ?? this.sigla,
      nome: nome ?? this.nome,
      uri: uri ?? this.uri,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'sigla': sigla,
      'nome': nome,
      'uri': uri,
    };
  }

  factory Partidos.fromMap(Map<String, dynamic> map) {
    return Partidos(
      id: map['id'] as int,
      sigla: map['sigla'] as String,
      nome: map['nome'] as String,
      uri: map['uri'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Partidos.fromJson(String source) => Partidos.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Partidos(id: $id, sigla: $sigla, nome: $nome, uri: $uri)';
  }

}
