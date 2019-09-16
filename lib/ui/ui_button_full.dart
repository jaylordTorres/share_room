import 'package:flutter/material.dart';
import '../constant/size.dart';

class UiButtonFull extends StatelessWidget {
  final double baseSize = 10;
  final String title;
  final Function onPressed;
  final String size;
  final bool disabled;

  UiButtonFull(
      {this.disabled = false,
      this.title,
      this.onPressed,
      this.size: UiStringSizes.medium});

  @override
  Widget build(BuildContext context) {
    double left, top, right, bottom, fontSize;
    // large 8 x 3
    if (size == UiStringSizes.large) {
      left = baseSize * 3;
      top = baseSize * 2.5;
      right = baseSize * 3;
      bottom = baseSize * 2.5;
      // font
      fontSize = baseSize * 3;
    } else {
      // medium
      left = baseSize * 2.5;
      top = baseSize * 2;
      right = baseSize * 2;
      bottom = baseSize * 2;
      // font
      fontSize = baseSize * 2;
    }

    return SizedBox(
        width: double.infinity,
        child: RaisedButton(
            onPressed: disabled ? null : onPressed,
            color: Colors.green[400],
            child: Padding(
              child: Text(
                title,
                style: TextStyle(fontSize: fontSize, color: Colors.white70),
              ),
              padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            )));
  }
}
