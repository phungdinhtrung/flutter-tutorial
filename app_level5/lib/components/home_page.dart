import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable/card.dart';
import 'reusable/icon_content.dart';

// Khai báo biến màu cho card được chọn
const activeCardColor = Color.fromARGB(255, 35, 37, 42);
const inActiveCardColor = Color.fromARGB(255, 19, 19, 23);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color maleCardColor = activeCardColor;
  Color femaleCardColor = inActiveCardColor;

  void updateColor(String gender) {
    if (gender == 'male') {
      maleCardColor = maleCardColor == activeCardColor
          ? inActiveCardColor
          : activeCardColor;

      femaleCardColor = maleCardColor == activeCardColor
          ? inActiveCardColor
          : activeCardColor;
    }

    if (gender == 'female') {
      femaleCardColor = femaleCardColor == activeCardColor
          ? inActiveCardColor
          : activeCardColor;

      maleCardColor = femaleCardColor == activeCardColor
          ? inActiveCardColor
          : activeCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
        child: Row(
          children: <Widget>[
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColor('male');
                  });
                },
                child: ReusableCard(
                    color: maleCardColor,
                    cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars, label: 'MALE')),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    updateColor('female');
                  });
                },
                child: ReusableCard(
                    color: femaleCardColor,
                    cardChild: const IconContent(
                        icon: FontAwesomeIcons.venus, label: 'FEMALE')),
              ),
            ),
          ],
        ),
      ),
      const Expanded(
        child: ReusableCard(
            color: activeCardColor,
            cardChild: IconContent(
              icon: FontAwesomeIcons.heartbeat,
              label: 'HEART RATE',
            )),
      ),
      const Expanded(
        child: Row(
          children: <Widget>[
            Expanded(
              child: ReusableCard(
                color: activeCardColor,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.weight,
                  label: 'WEIGHT',
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: activeCardColor,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.ruler,
                  label: 'HEIGHT',
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        height: 80.0,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10.0),
        decoration: const BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: const Center(
          child: Text(
            'Calculate',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      )
    ]);
  }
}
