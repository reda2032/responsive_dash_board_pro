import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_list.dart';
import 'custom_sliver_grid.dart';
import 'custom_sliver_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          // sizeBox
          const SliverToBoxAdapter(
            child: SizedBox(height: 16.0),
          ),
          // custom_sliver_grid
          SliverToBoxAdapter(
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                // todo add tablet layout
                return const CustomList();
              } else {
                return const CustomSliverGrid();
              }
            }),
          ),
          // CustomListView
          const CustomSliverListView(),
        ],
      ),
    );
  }
}
