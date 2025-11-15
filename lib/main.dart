import 'package:app_project_files/screens/home.dart';
import 'package:flutter/material.dart';

import 'constants/app_colors.dart';

void main()=>runApp(Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: MyColors.black),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
