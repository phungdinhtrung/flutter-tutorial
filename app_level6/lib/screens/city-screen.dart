import 'package:flutter/material.dart';
import '../utilities/constant.dart';

class InputCity extends StatefulWidget {
  const InputCity({super.key});

  @override
  State<InputCity> createState() => _InputCityState();
}

class _InputCityState extends State<InputCity> {
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('City Screen', style: TextStyle(color: Colors.white)),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: kInputDecorationStyle,
                onChanged: (value) {
                  cityName = value;
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, cityName);
              },
              child: const Text('Get weather'),
            ),
          ],
        ),
      ),
    );
  }
}
