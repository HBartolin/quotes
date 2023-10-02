import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(const MaterialApp(
    home: QuoteList()
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  QuoteListState createState() => QuoteListState();
}

class QuoteListState extends State<QuoteList> {

  //  List<String> quotes = [
  //    'Be yourself; everyone else is already taken',
  //    'I have nothing to declare except my genius',
  //    'The truth is rarely pure and never simple'
  //  ];

  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken'),
    Quote(author: 'Oscar Wilde', text: 'WBe yourself; everyone else is already taken'),
    Quote(author: 'Oscar Wilde', text: 'I have nothing to declare except my genius'),
    Quote(author: 'Oscar Wilde', text: 'The truth is rarely pure and never simple')
  ];

  Widget quoteTemleate(quote) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[600],
            ),
          ),
            const SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
        ],
      ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map(
                (quote) => quoteTemleate(quote)
        ).toList(),
      ),
    );
  }
}


