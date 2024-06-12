import 'package:flutter/material.dart';
import 'component/layout/theme.dart';
import 'package:app_level4/page/home.dart';
import 'package:app_level4/page/result.dart';

void main() {
  runApp(const MBICaculator());
}

class MBICaculator extends StatelessWidget {
  const MBICaculator({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => home,
      },
    );
  }
}
