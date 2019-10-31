import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() { 
  runApp(MaterialApp(
    home: QuoteList(),
    ),
  );
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Osca Wilde', text: 'Be yourself, everyone else is already taken'),
    Quote(author: 'Jones', text: 'My true life, is hidden in Christ with God'),
    Quote(author: 'Jesus', text: 'I Am the Way, the Truth, and the Life')

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),

      body: Column(
        children: quotes.map((quote) {
          return QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
               quotes.remove(quote); 
              });
            }
          );
        }).toList(),
      ),
    );
  }
}
