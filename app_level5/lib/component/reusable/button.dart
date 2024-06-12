import 'package:flutter/material.dart';

class ButtonOnBottom extends StatelessWidget {
  final Function? onTap;
  final String titleButton;

  const ButtonOnBottom({
    super.key,
    required this.onTap,
    required this.titleButton,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
        height: 80.0,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10.0),
        decoration: const BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Center(
          child: Text(
            titleButton,
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
