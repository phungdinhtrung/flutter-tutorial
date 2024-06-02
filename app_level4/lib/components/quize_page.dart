import 'package:flutter/material.dart';
import 'package:app_level4/data/quize_brain.dart';

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
