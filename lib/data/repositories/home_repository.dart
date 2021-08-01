import 'package:free_games/data/models/game_model.dart';
import 'package:get/get_connect/connect.dart';

class HomeRepository extends GetConnect {
  Future<List<Game>> findAllGames() async {
    final response =
        await get('https://www.freetogame.com/api/games', decoder: (body) {
      if (body is List) {
        return body.map<Game>((resp) => Game.fromJson(resp)).toList();
      }
      return <Game>[];
    });

    if (response.hasError) {
      throw Exception('Erro ao buscar usuários');
    }
    return response.body ?? <Game>[];
  }
}
