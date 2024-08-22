import 'package:flutter/material.dart';

class CustomItem1 extends StatelessWidget {
  const CustomItem1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffB4B4B4),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    );
  }
}
