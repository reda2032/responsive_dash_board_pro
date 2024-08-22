import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Color(0xffDBDBDB),
      elevation: 0,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              FontAwesomeIcons.solidHeart,
              size: 56,
            ),
          ),
          SizedBox(height: 16),
          CustomDrawerItemListView(),

          // CustomDrawerItem(),
        ],
      ),
    );
  }
}
