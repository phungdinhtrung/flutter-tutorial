import 'package:flutter/material.dart';
import 'component/layout/theme.dart';
import 'component/layout/app_bar.dart';
import 'page/home.dart';

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
        home: Scaffold(
          appBar: appBar,
          body: const SafeArea(child: HomePage()),
        ));
  }
}
