import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prapare/strings.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = context.textTheme;
    return Center(
      child: Text(
        S.TITLE_HOME,
        style: textTheme.headline5,
        textAlign: TextAlign.center,
      ),
    );
  }
}