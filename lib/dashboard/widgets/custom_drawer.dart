import 'package:flutter/material.dart';
import 'package:responsive_dash_board/dashboard/models/drawer_item_model.dart';
import 'package:responsive_dash_board/dashboard/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/dashboard/widgets/drawer_items_list_view.dart';

import '../utils/app_images.dart';
import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              image: Assets.imagesAvatar3,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8.0)),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20.0)),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                  title: 'Setting system',
                  image: Assets.imagesSettings,
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                  title: 'Logout account',
                  image: Assets.imagesLogout,
                )),
                SizedBox(height: 48.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
