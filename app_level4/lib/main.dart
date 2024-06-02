import 'package:flutter/material.dart';
import 'quize_brain.dart';

void main() {
  runApp(const Quizzler());
}

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Quizzler',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 63, 60, 60),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromARGB(221, 67, 65, 65),
            centerTitle: true,
            foregroundColor: Colors.white,
          ),
          colorScheme: const ColorScheme.light(
            primary: Color.fromARGB(255, 4, 65, 6),
            brightness: Brightness.dark,
          ),
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
            ),
            bodyMedium: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Quizzler'),
            centerTitle: true,
          ),
          body: const SafeArea(child: QuizPage()),
        ));
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  QuizeBrain quizeBrain = QuizeBrain();

  void checkAnswer({bool userPickedAnswer = true}) {
    bool correctAnswer = quizeBrain.getQuestionAnswer();

    if (correctAnswer == userPickedAnswer) {
      setState(() {
        scoreKeeper.add(const Icon(Icons.check, color: Colors.green));
      });
    } else {
      setState(() {
        scoreKeeper.add(const Icon(Icons.close, color: Colors.red));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            quizeBrain.getQuestionText(),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              checkAnswer(userPickedAnswer: true);
            },
            child: const Text('True'),
          ),
          ElevatedButton(
            onPressed: () {
              checkAnswer(userPickedAnswer: false);
            },
            child: const Text('False'),
          ),
          const SizedBox(height: 20.0),
          Row(
            children: scoreKeeper,
          ),
        ],
      ),
    );
  }
}
