import 'package:flutter/material.dart';

import 'custom_sliver_grid.dart';
import 'custom_sliver_list_view.dart';

class MobilLayout extends StatelessWidget {
  const MobilLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        // sizeBox
        SliverToBoxAdapter(
          child: SizedBox(height: 16.0),
        ),
        // custom_sliver_grid
        CustomSliverGrid(),
        // CustomListView
        CustomSliverListView(),
      ],
    );
  }
}
