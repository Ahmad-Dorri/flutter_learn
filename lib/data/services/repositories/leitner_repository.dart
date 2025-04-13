import 'package:hive_flutter/hive_flutter.dart';
import 'package:langeek_flutter/data/data.dart';

class LeitnerRepository {
  final Box<CardModel> _box;
  LeitnerRepository(this._box);

  List<CardModel> getCards() {
    return _box.values.toList();
  }

  void addCard(CardModel card) {
    _box.put(card.id, card);
  }

  void resetLeitner() {
    _box.clear();
  }

}
