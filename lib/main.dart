import 'quote.dart';
import 'package:flutter/material.dart';
import 'quote_card.dart';


void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote("aa", "1"),
    Quote("bb", "2"),
    Quote("cc", "3"),
    Quote("dd", "4"),
    Quote("ee", "5"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        title: Text("quotes"),
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote)).toList(),
      ),
    );
  }
}

