import 'package:free_games/data/models/game_model.dart';
import 'package:free_games/data/repositories/home_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {
  final HomeRepository _httpRepository;

  HomeController(this._httpRepository);

  var games = <Game>[].obs;

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  Future<void> findUsers() async {
    try {
      games.value = await _httpRepository.findAllGames();
    } catch (e) {
      print(e);
    }
  }
}
