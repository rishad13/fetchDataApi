import 'dart:convert';

Album albumFromJson(String str) => Album.fromJson(json.decode(str));

String albumToJson(Album data) => json.encode(data.toJson());

class Album {
  Album({
    required this.count,
    required this.gender,
    required this.name,
    required this.probability,
  });

  int count;
  String gender;
  String name;
  double probability;

  factory Album.fromJson(Map<String, dynamic> json) => Album(
        count: json["count"],
        gender: json["gender"],
        name: json["name"],
        probability: json["probability"],
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "gender": gender,
        "name": name,
        "probability": probability,
      };
}
