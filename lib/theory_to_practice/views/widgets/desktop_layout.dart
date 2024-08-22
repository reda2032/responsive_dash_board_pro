import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/theory_to_practice/views/widgets/tablet_layout.dart';

import 'custom_desktop_widgets.dart';
import 'custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 3, child: TabletLayout()),
        Expanded(child: CustomDesktopWidgets()),
      ],
    );
  }
}
