import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_item1.dart';
import 'custom_item2.dart';

class CustomDesktopWidgets extends StatelessWidget {
  const CustomDesktopWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(flex: 2, child: CustomItem1()),
        SizedBox(height: 16.0),
        Expanded(flex: 1, child: CustomItem2()),
      ],
    );
  }
}
