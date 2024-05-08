import 'package:flutter/material.dart';
import 'package:hello_world/domain/player_hand_model.dart';
import 'package:hello_world/pages/board_page.dart';
import 'package:hello_world/widgets/player_hand.dart';
import 'package:hello_world/widgets/truco_card.dart';

import 'domain/card_model.dart';

void main() {
  runApp(const BusinessCard());
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: BoardPage(),
    );
  }
}

