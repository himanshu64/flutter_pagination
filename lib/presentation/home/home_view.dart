import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_healtcare/presentation/router/app_router.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        PostsRoute(),
        DragRoute(),
        FilterRoute()

      ],
       transitionBuilder: (context, child, animation) {
        // add animation to our selected-tab page
        return FadeTransition(opacity: animation, child: child);
      },
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  label: 'Drag Buttons', icon: Icon(Icons.drag_handle_rounded)),
              BottomNavigationBarItem(
                  label: 'Face Filter', icon: Icon(Icons.archive))
            ]);
      },
    );
  }
}
