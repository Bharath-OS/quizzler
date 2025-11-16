import 'package:app_project_files/database/questions.dart';
import 'package:app_project_files/screens/home.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/buttons.dart';
import '../styles/text_styles.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  ScoreScreen({super.key, required this.score});
  late String message;

  @override
  Widget build(BuildContext context) {
    message = score < quizQuestions.length / 2
        ? "Good attempt🥲"
        : "Congratulations!👏🥳";
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 30,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              "$message \nYour Score is : $score",
              style: TextStyles.questionTextStyle,
            ),
            MyButtons.primaryActionButton(
              text: 'Go to home',
              method: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
