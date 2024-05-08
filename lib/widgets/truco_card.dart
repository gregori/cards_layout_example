import 'package:flutter/material.dart';
import 'package:hello_world/domain/card_model.dart';

class TrucoCard extends StatelessWidget {
  final CardModel cardModel;
  final bool? showFace;

  // Construtor
  const TrucoCard({
    super.key,
    required this.cardModel,
    this.showFace,
  });

  @override
  Widget build(BuildContext context) {
    bool visibleFace = showFace ?? false;

    return Container(
      width: 50,
      height: 50,
      color: Colors.white,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(5),
      child: visibleFace
          ? Center(
              child: Text(
              cardModel.faceValue,
              style: const TextStyle(fontSize: 25),
            ))
          : null,
    );
  }
}
