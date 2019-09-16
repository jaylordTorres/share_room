import 'package:flutter/material.dart';
import 'package:umpisa_room/core.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[UiLogo(), Text(AppTerms.subTitle)],
            ),
          ),
          UiButtonRound(
            onPressed: () => Navigator.of(context).pushNamed(AppRoutes.login),
            title: 'START',
            // size: StringSizes.large,
          )
        ]);
  }
}
