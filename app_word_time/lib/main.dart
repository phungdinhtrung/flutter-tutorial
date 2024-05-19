import 'package:flutter/material.dart';
import 'package:app_word_time/pages/home.dart';
import 'package:app_word_time/pages/loading.dart';
import 'package:app_word_time/pages/choose_location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => const Loading(),
      '/home': (context) => const Home(),
      '/location': (context) => const ChooseLocation(),
    },
  ));
}
