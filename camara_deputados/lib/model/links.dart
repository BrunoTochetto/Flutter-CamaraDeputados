// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Links {
  String href;
  String rel;
  String type;
  Links({
    required this.href,
    required this.rel,
    required this.type,
  });

  

  Links copyWith({
    String? href,
    String? rel,
    String? type,
  }) {
    return Links(
      href: href ?? this.href,
      rel: rel ?? this.rel,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'href': href,
      'rel': rel,
      'type': type,
    };
  }

  factory Links.fromMap(Map<String, dynamic> map) {
    return Links(
      href: map['href'] as String,
      rel: map['rel'] as String,
      type: map['type'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Links.fromJson(String source) => Links.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Links(href: $href, rel: $rel, type: $type)';
}
