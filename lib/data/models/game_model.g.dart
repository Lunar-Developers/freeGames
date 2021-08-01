// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Game _$GameFromJson(Map<String, dynamic> json) {
  return Game(
    title: json['title'] as String?,
    thumbnail: json['thumbnail'] as String?,
    short_description: json['short_description'] as String?,
    game_url: json['game_url'] as String?,
    genre: json['genre'] as String?,
    platform: json['platform'] as String?,
    publisher: json['publisher'] as String?,
    developer: json['developer'] as String?,
    release_date: json['release_date'] as String?,
    freetogame_profile_url: json['freetogame_profile_url'] as String?,
  );
}

Map<String, dynamic> _$GameToJson(Game instance) => <String, dynamic>{
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'short_description': instance.short_description,
      'game_url': instance.game_url,
      'genre': instance.genre,
      'platform': instance.platform,
      'publisher': instance.publisher,
      'developer': instance.developer,
      'release_date': instance.release_date,
      'freetogame_profile_url': instance.freetogame_profile_url,
    };
