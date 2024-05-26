import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function fnDelete;

  const QuoteCard({super.key, required this.quote, required this.fnDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Text(
              '${quote.text}',
              style: const TextStyle(
                  color: Colors.indigo,
                  fontSize: 20
              ),
            ),
            Text(
              '${quote.author}',
              style: const TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
            ),
            TextButton.icon(onPressed: fnDelete(), label: const Text('Delete'))
          ],
        ),
      ),
    );
  }
}