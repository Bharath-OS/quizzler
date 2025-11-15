import 'package:app_project_files/constants/app_colors.dart';
import 'package:app_project_files/custom_widgets/buttons.dart';
import 'package:app_project_files/screens/questions_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgColor,
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              "Welcome to \nQuizzler",
              style: TextStyle(
                color: MyColors.textColor,
                fontFamily: "Ubuntu",
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            MyButtons.primaryActionButton(
              text: "Start Quiz",
              method: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => QuestionsScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
