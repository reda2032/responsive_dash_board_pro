import 'package:flutter/material.dart';
import 'package:responsive_dash_board/dashboard/widgets/all_expensess_header.dart';

import 'all_expensess_items_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          )),
      child: const Column(
        children: [
          AllExpensessHeader(),
          SizedBox(height: 16),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
