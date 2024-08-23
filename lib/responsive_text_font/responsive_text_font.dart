import 'package:flutter/material.dart';

// 1- scaleFactor
// 2- responsiveFontSize
// 3- min,max font size
// mobile 400 - tablet 700 - desktop 1000

double getResponsiveFontSize(
  BuildContext context, {
  required double fontSize,
}) {
  // 1- scaleFactor
  double? scaleFactor = getScaleFactor(context);
  // 2- responsiveFontSize
  double responsiveFontSize = fontSize * scaleFactor!;
  // 3- min,max font size
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double? getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else if (width < 1200) {
    return width / 1000;
  }
  return null;
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Test',
      style: TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
      ),
    );
  }
}
