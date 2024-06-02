import 'package:flutter/material.dart';
import 'components/layout/theme.dart';
import 'components/layout/app_bar.dart';
import 'page/home.dart';

void main() {
  runApp(const Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: appTheme,
        home: Scaffold(
          appBar: appBar,
          body: const SafeArea(child: HomePage()),
        ));
  }
}
