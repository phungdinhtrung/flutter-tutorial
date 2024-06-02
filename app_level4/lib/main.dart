import 'package:flutter/material.dart';
import 'config/theme.dart';
import 'package:app_level4/components/quize_page.dart';
import 'config/app_bar.dart';

void main() {
  runApp(const Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeConfig().getTheme(),
        home: Scaffold(
          appBar: AppBarConfig().getAppBar(),
          body: const SafeArea(child: QuizPage()),
        ));
  }
}
