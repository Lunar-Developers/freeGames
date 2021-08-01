import 'package:flutter/material.dart';
import 'package:free_games/data/models/game_model.dart';

class GameCard extends StatelessWidget {
  final Game game;

  const GameCard(this.game, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 400,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Container(
                  height: 120,
                  child: Image.network(
                    game.thumbnail ?? '',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    game.title ?? '',
                    style: textTheme.headline5,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
