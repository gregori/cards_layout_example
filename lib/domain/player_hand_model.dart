import 'card_model.dart';

class PlayerHandModel {
  List<CardModel> hand = [];

  void addCard(CardModel card) {
    if (hand.length < 4) {
      hand.add(card);
    }
  }

  void addAllCards(List<CardModel> cards) {
    if (hand.isEmpty && cards.length == 3) {
      hand.addAll(cards);
    }
  }
}