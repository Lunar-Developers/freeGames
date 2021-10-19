import 'package:flutter/material.dart';
import 'package:free_games/data/models/game_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class GameCard extends StatelessWidget {
  final Game game;

  const GameCard(this.game);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          height: 240,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: CachedNetworkImage(
                    imageUrl:
                        game.thumbnail ?? 'http://via.placeholder.com/350x150',
                    fit: BoxFit.fill,
                    height: 120,
                    placeholder: (context, url) => Container(
                      alignment: Alignment.center,
                      child: SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator()),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  )),
              Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Text(
                      game.title ?? '',
                      style: textTheme.headline5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
