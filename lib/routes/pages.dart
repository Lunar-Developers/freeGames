import 'package:free_games/modules/edit_recipe/edit_recipe_page.dart';
import 'package:free_games/modules/home/home_binding.dart';
import 'package:free_games/modules/home/home_page.dart';
import 'package:free_games/routes/routes.dart';
import 'package:get/get.dart';

final pages = [
  GetPage(
    name: Routes.home,
    page: () => HomePage(),
    binding: HomeBinding(),
  ),
  GetPage(
    name: Routes.editRecipe,
    page: () => EditRecipePage(),
  ),
];
