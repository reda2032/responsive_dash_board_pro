import 'package:flutter/material.dart';

import 'custom_sliver_grid.dart';
import 'custom_sliver_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 16.0),
          ),
          // custom_sliver_grid
          CustomSliverGrid(),
          // CustomListView
          CustomSliverListView(),
        ],
      ),
    );
  }
}
