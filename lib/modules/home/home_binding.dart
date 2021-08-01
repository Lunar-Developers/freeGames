import 'package:free_games/data/repositories/home_repository.dart';
import 'package:free_games/modules/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeRepository());
    Get.put(HomeController(Get.find()));
  }
}
