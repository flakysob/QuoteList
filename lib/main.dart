import 'quote.dart';
import 'package:flutter/material.dart';

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

  Widget quoteTemplate(quote){
    return QuoteCard(quote);
  }

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
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {

  late final Quote quote;

  QuoteCard(Quote q){
    this.quote = q;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.textOfProperty,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                color:Colors.grey[600],
              ),
            ),

            SizedBox(height: 6.0,),

            Text(
              quote.numberOfProperty,
              style: TextStyle(
                fontSize: 10.0,
                color:Colors.grey[400],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

