import 'package:flutter/material.dart';

class TabTitle extends StatelessWidget {
  const TabTitle(
    this.title,
  );

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
