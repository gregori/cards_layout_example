import 'package:flutter/material.dart';
import 'package:hello_world/domain/card_model.dart';
import 'package:hello_world/domain/player_hand_model.dart';
import 'package:hello_world/widgets/player_hand.dart';

class BoardPage extends StatelessWidget {
  const BoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    PlayerHandModel hand = PlayerHandModel();
    hand.addAllCards([
      CardModel(faceValue: 'Q', value: 7, faceUrl: 'a'),
      CardModel(faceValue: '4', value: 1, faceUrl: 'a'),
      CardModel(faceValue: '5', value: 2, faceUrl: 'a'),
    ]);

    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PlayerHand(playerHandModel: hand),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PlayerHand(playerHandModel: hand, vertical: true),
                const Spacer(flex: 5),
                PlayerHand(playerHandModel: hand, vertical: true),
              ],
            ),
            PlayerHand(playerHandModel: hand, showHand: true),
          ],
        ),
      ),
    );
  }
}
