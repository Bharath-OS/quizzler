import 'package:app_project_files/constants/app_colors.dart';
import 'package:flutter/material.dart';

class MyButtons {
  static double horizontalPadding = 40;
  static double verticalPadding = 20;
  static ElevatedButton primaryActionButton({
    required String text,
    required VoidCallback method,
  }) {
    return ElevatedButton(
      onPressed: method,
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.primaryColor,
        foregroundColor: MyColors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(5),
        ),
        textStyle: TextStyle(
          fontFamily: "Ubuntu",
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
      ),
      child: Text(text),
    );
  }

  static ElevatedButton trueButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.successColor,
        foregroundColor: MyColors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(5),
        ),
        textStyle: TextStyle(
          fontFamily: "Ubuntu",
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
      ),
      child: Text("True"),
    );
  }

  static ElevatedButton falseButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: MyColors.errorColor,
        foregroundColor: MyColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(5),
        ),
        textStyle: TextStyle(
          fontFamily: "Ubuntu",
          fontSize: 25,
          fontWeight: FontWeight.w500,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
      ),
      child: Text("False"),
    );
  }
}
