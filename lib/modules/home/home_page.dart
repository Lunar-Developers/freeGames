import 'package:flutter/material.dart';
import 'package:free_games/modules/home/components/game_card.dart';
import 'package:free_games/modules/home/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      // bottomNavigationBar: Container(
      //   height: 80,
      //   decoration: BoxDecoration(
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.grey.withOpacity(0.5),
      //         spreadRadius: 3,
      //         blurRadius: 3,
      //       ),
      //     ],
      //     color: Colors.white,
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       Icon(Icons.search, size: 48),
      //       Icon(Icons.wallet_giftcard, size: 48),
      //       Icon(Icons.chevron_left,
      //           size: 48, color: Theme.of(context).primaryColor),
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
          child: Column(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       'Games',
              //       style: textTheme.headline2,
              //     ),
              //     Row(
              //       children: [
              //         Icon(Icons.settings),
              //         SizedBox(width: 10),
              //         Text(
              //           'Settings',
              //           style: textTheme.bodyText1,
              //         )
              //       ],
              //     ),
              //   ],
              // ),
              // SizedBox(height: 30),
              // Row(
              //   children: [
              //     Container(
              //       height: 120,
              //       width: 120,
              //       decoration: BoxDecoration(
              //         color: Colors.grey,
              //         shape: BoxShape.circle,
              //       ),
              //     ),
              //     SizedBox(width: 20),
              //     Expanded(
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               Text(
              //                 'Lucas Santos',
              //                 style: textTheme.headline5,
              //               ),
              //               Icon(Icons.edit),
              //             ],
              //           ),
              //           SizedBox(height: 3),
              //           Text(
              //             'O gamer',
              //             style: TextStyle(color: Colors.grey, fontSize: 18),
              //           ),
              //           SizedBox(height: 12),
              //           Row(
              //             children: [
              //               Text(
              //                 '777 followers',
              //                 style: TextStyle(
              //                   color: Colors.grey,
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.w500,
              //                 ),
              //               ),
              //               SizedBox(width: 10),
              //               Container(
              //                 height: 5,
              //                 width: 5,
              //                 decoration: BoxDecoration(
              //                   color: Colors.grey,
              //                   shape: BoxShape.circle,
              //                 ),
              //               ),
              //               SizedBox(width: 10),
              //               Text(
              //                 '77k likes',
              //                 style: TextStyle(
              //                   color: Colors.grey,
              //                   fontSize: 16,
              //                   fontWeight: FontWeight.w500,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(height: 30),
              // Container(
              //   height: 1,
              //   color: Colors.grey,
              // ),
              // SizedBox(height: 30),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Categories(20, 'Games', true),
              //     Categories(75, 'Saved', false),
              //     Categories(248, 'Following', false),
              //   ],
              // ),
              // Container(
              //   height: 1,
              //   color: Colors.grey,
              // ),

              Obx(() {
                final games = controller.games;

                return Column(
                  children: List.generate(games.length, (index) {
                    // index += 2;
                    return Visibility(
                      visible: index.isOdd,
                      child: Row(
                        children: [
                          Expanded(child: GameCard(games[index])),
                          if (index + 1 < games.length)
                            Expanded(child: GameCard(games[index + 1]))
                          else
                            SizedBox(),
                        ],
                      ),
                    );
                  }),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
