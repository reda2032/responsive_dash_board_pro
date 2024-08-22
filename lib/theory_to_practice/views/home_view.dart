import 'package:flutter/material.dart';

import 'widgets/custom_drawer.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffDBDBDB),
      appBar: MediaQuery.sizeOf(context).width < 900
          ? AppBar(
              backgroundColor: Colors.black,
              leading: GestureDetector(
                onTap: () {
                  scaffoldKey.currentState?.openDrawer();
                },
                child: const Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            )
          : null,
      body: const HomeViewBody(),
    );
  }
}

/*
class CustomAdaptiveAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAdaptiveAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 900) {
        return AppBar(
          backgroundColor: Colors.black,
          leading: GestureDetector(
            onTap: () {
              //  scaffoldKey.currentState?.openDrawer();
            },
            child: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        );
      } else {
        return const SizedBox();
      }
    });
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(65.0);
}
*/
