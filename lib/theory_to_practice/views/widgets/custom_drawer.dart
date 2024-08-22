import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Color(0xffDBDBDB),
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              FontAwesomeIcons.solidHeart,
              size: 48,
            ),
          ),
          CustomDrawerItemListView(),

          // CustomDrawerItem(),
        ],
      ),
    );
  }
}
