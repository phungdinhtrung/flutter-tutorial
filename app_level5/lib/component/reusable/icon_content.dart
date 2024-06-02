import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  final double iconSize = 80;
  final double fontSize = 18;
  final double iconPadding = 15;

  const IconContent({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
          color: Theme.of(context).colorScheme.primary,
        ),
        SizedBox(
          height: iconPadding,
        ),
        Text(
          textAlign: TextAlign.center,
          label,
          style: TextStyle(fontSize: fontSize),
        ),
      ],
    );
  }
}
