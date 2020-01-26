void main(){
  var deck = new Deck();
//   deck.shuffle();
//   print(deck);
  
//   print(deck.deal(5));
//   print(deck);
  
  print(deck);
  print(deck.removeCard('Diamonds','Ace'));
}

class Deck {
  List<Card> cards = [];
  var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
  var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];
  
  Deck(){
    for (var mySuit in suits) {
      for (var rank in ranks) {
        var card = new Card(
          rank,
          suit: mySuit
        );
        cards.add(card);
      }
    }
  }
  toString(){
    return cards.toString();
  }
  shuffle(){
    cards.shuffle();
  }
  cardWithSuit(String suit){
    return cards.where((card) => card.suit == suit);
  }
  deal(int handSize) {
    var hand = cards.sublist(0,handSize);
    cards = cards.sublist(handSize);
    return hand;
  }
  removeCard(String suit, String rank){
//     cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
    cards.removeWhere((item){
      return item.suit == suit && item.rank == rank;
    });
  }
}


class Card {
  String suit;
  String rank;
  
  Card({this.rank,this.suit});
  
  toString(){
    return "$rank of $suit";
  }
}