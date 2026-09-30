// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Deputados {
  String email;
  int id;
  int idLegislatura;
  String nome;
  String siglaPartido;
  String siglaUf;
  String uri;
  String uriPartido;
  String urlFoto;
  
  Deputados({
    required this.email,
    required this.id,
    required this.idLegislatura,
    required this.nome,
    required this.siglaPartido,
    required this.siglaUf,
    required this.uri,
    required this.uriPartido,
    required this.urlFoto,
  });

  Deputados copyWith({
    String? email,
    int? id,
    int? idLegislatura,
    String? nome,
    String? siglaPartido,
    String? siglaUf,
    String? uri,
    String? uriPartido,
    String? urlFoto,
  }) {
    return Deputados(
      email: email ?? this.email,
      id: id ?? this.id,
      idLegislatura: idLegislatura ?? this.idLegislatura,
      nome: nome ?? this.nome,
      siglaPartido: siglaPartido ?? this.siglaPartido,
      siglaUf: siglaUf ?? this.siglaUf,
      uri: uri ?? this.uri,
      uriPartido: uriPartido ?? this.uriPartido,
      urlFoto: urlFoto ?? this.urlFoto,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'id': id,
      'idLegislatura': idLegislatura,
      'nome': nome,
      'siglaPartido': siglaPartido,
      'siglaUf': siglaUf,
      'uri': uri,
      'uriPartido': uriPartido,
      'urlFoto': urlFoto,
    };
  }

  factory Deputados.fromMap(Map<String, dynamic> map) {
    return Deputados(
      email: map['email'] as String,
      id: map['id'] as int,
      idLegislatura: map['idLegislatura'] as int,
      nome: map['nome'] as String,
      siglaPartido: map['siglaPartido'] as String,
      siglaUf: map['siglaUf'] as String,
      uri: map['uri'] as String,
      uriPartido: map['uriPartido'] as String,
      urlFoto: map['urlFoto'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Deputados.fromJson(String source) => Deputados.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Deputados(email: $email, id: $id, idLegislatura: $idLegislatura, nome: $nome, siglaPartido: $siglaPartido, siglaUf: $siglaUf, uri: $uri, uriPartido: $uriPartido, urlFoto: $urlFoto)';
  }
}
