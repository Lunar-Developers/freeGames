import 'package:json_annotation/json_annotation.dart';

part 'game_model.g.dart';

@JsonSerializable()
class Game {
  final String? title;
  final String? thumbnail;
  // ignore: non_constant_identifier_names
  final String? short_description;
  // ignore: non_constant_identifier_names
  final String? game_url;
  final String? genre;
  final String? platform;
  final String? publisher;
  final String? developer;
  // ignore: non_constant_identifier_names
  final String? release_date;
  // ignore: non_constant_identifier_names
  final String? freetogame_profile_url;

  Game({
    this.title,
    this.thumbnail,
    // ignore: non_constant_identifier_names
    this.short_description,
    // ignore: non_constant_identifier_names
    this.game_url,
    this.genre,
    this.platform,
    this.publisher,
    this.developer,
    // ignore: non_constant_identifier_names
    this.release_date,
    // ignore: non_constant_identifier_names
    this.freetogame_profile_url,
  });

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);
  Map<String, dynamic> toJson() => _$GameToJson(this);
}
