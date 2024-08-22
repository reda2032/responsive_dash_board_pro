import 'package:flutter/material.dart';

import 'custom_list.dart';
import 'custom_sliver_list_view.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        // sizeBox
        SliverToBoxAdapter(
          child: SizedBox(height: 16.0),
        ),
        // custom_sliver_grid
        CustomList(),
        // CustomListView
        CustomSliverListView(),
      ],
    );
  }
}
