class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {
        // we can give any order to create card.
        var card = new Card(rank: rank, suit: suit);
        cards.add(card);
      }
    }
  }

  @override
  String toString() {
    return cards.toString();
  }

  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }

  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);

    return hand;
  }

  removeCard(String suit, String rank) {
    cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
  }
}

class Card {
  late String suit;
  late String rank;

  // named parameter constructor
  // first rank, second suit
  Card({required this.rank, required this.suit});

  @override
  String toString() {
    return '\n$rank of $suit';
  }
}

void main() {
  var deck = new Deck();
  deck.removeCard('Diamonds', 'Ace');
  print(deck);
  // print(deck.deal(5));
  // print(deck);

  // deck.shuffle();
  // deck.buildMyCards();
  // print(deck.cardsWithSuit('Diamonds'));
}
