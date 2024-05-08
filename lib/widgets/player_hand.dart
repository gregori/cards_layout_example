import 'package:flutter/material.dart';
import 'package:hello_world/domain/player_hand_model.dart';
import 'package:hello_world/widgets/truco_card.dart';

class PlayerHand extends StatelessWidget {
  final PlayerHandModel playerHandModel;
  final bool? showHand;
  final bool? vertical;

  const PlayerHand({
    super.key,
    required this.playerHandModel,
    this.showHand,
    this.vertical,
  });

  @override
  Widget build(BuildContext context) {
    bool isVertical = vertical ?? false;

    List<TrucoCard> cards = playerHandModel.hand
        .map((card) => TrucoCard(cardModel: card, showFace: showHand))
        .toList();

    return isVertical
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: cards,
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: cards,
          );
  }
}
