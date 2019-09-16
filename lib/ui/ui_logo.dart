import 'package:flutter/material.dart';
import '../constant/term.dart';
import '../constant/color.dart';
import '../constant/size.dart';

class UiLogo extends StatelessWidget {
  final String title;

  UiLogo({this.title: AppTerms.appName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 40),
      child: Text(
        title,
        style: TextStyle(
            fontSize: UiSizes.h1,
            color: UiColors.primary,
            fontWeight: FontWeight.w800),
      ),
    );
  }
}
