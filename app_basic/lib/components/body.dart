import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Quote> quotes = [
    Quote(
        author: 'Phung Trung',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        text: 'I have nothing to declare except my genius',
        author: 'Hoang Anh'),
    Quote(
        text: 'The truth is rarely pure and never simple',
        author: 'Bao Chau'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: quotes
          .map((quote) => QuoteCard(
                quote: quote,
                fnDelete: () {},
              ))
          .toList(),
    );
  }
}
