import 'quote.dart';
import 'package:flutter/material.dart';


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