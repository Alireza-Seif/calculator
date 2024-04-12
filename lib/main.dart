import 'package:calculator/constants/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Application(),
    );
  }
}

class Application extends StatelessWidget {
  const Application({super.key});

  Widget getRow(String text1, String text2, String text3, String text4) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            shape: const CircleBorder(
              side: BorderSide(width: 0, color: Colors.transparent),
            ),
            backgroundColor: getBackgroundColor(text1),
          ),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              text1,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textGrey,
                fontSize: 26,
              ),
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            shape: const CircleBorder(
              side: BorderSide(width: 0, color: Colors.transparent),
            ),
            backgroundColor: getBackgroundColor(text2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              text2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textGrey,
                fontSize: 26,
              ),
            ),
          ),
          onPressed: () {},
        ),
        TextButton(
          style: TextButton.styleFrom(
            shape: const CircleBorder(
              side: BorderSide(width: 0, color: Colors.transparent),
            ),
            backgroundColor: getBackgroundColor(text3),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              text3,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textGrey,
                fontSize: 26,
              ),
            ),
          ),
          onPressed: () {},
        ),
        TextButton(
          style: TextButton.styleFrom(
            shape: const CircleBorder(
              side: BorderSide(width: 0, color: Colors.transparent),
            ),
            backgroundColor: getBackgroundColor(text4),
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              text4,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textGrey,
                fontSize: 26,
              ),
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: backgroundGreyDark,
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                color: backgroundGrey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    getRow('ac', 'ce', '%', '/'),
                    getRow('7', '8', '9', '*'),
                    getRow('4', '5', '6', '-'),
                    getRow('1', '2', '3', '+'),
                    getRow('00', '0', '.', '='),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isOperator(String text) {
    List<String> list = ['ac', 'ce', '%', '/', '*', '-', '+', '='];

    for (var item in list) {
      if (text == item) {
        return true;
      }
    }

    return false;
  }

  Color getBackgroundColor(String text) {
    if (isOperator(text)) {
      return backgroundGreyDark;
    } else {
      return backgroundGrey;
    }
  }
}
