import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wave_progress_bars/wave_progress_bars.dart';

class WaveForm extends StatelessWidget {
  final List<double> values = [];

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    var rng = new Random();
    for (var i = 0; i < 100; i++) {
      values.add(rng.nextInt(70) * 1.0);
    }
    return Container(
      child: Center(
        child: WaveProgressBar(
          progressPercentage: 0,
          listOfHeights: values,
          width: queryData.size.width,
          initalColor: Colors.pinkAccent,
          progressColor: Colors.white,
          backgroundColor: Color(0xff1A232E),
          timeInMilliSeconds: 2000,
          isHorizontallyAnimated: false,
          isVerticallyAnimated: false,
        ),
      ),
    );
  }
}
