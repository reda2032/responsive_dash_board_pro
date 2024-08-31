import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/dashboard/widgets/all_expenses.dart';

import 'custom_drawer.dart';
import 'quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32.0),
        Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(width: 40),
                  AllExpenses(),
                  SizedBox(width: 24.0),
                  QuickInvoice(),
                ],
              ),
            )),
      ],
    );
  }
}
