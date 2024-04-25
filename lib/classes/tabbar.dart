import 'package:flutter/cupertino.dart';
import 'package:flutter_run_app/classes/find.dart';
import 'package:flutter_run_app/classes/home.dart';
import 'package:flutter_run_app/classes/info.dart';
import 'package:flutter_run_app/classes/my.dart';

class TabbarController extends StatefulWidget {
  const TabbarController({super.key});

  @override
  State<TabbarController> createState() => _TabbarControllerState();
}

class _TabbarControllerState extends State<TabbarController> {
  var items = const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.arrow_up_doc),
      label: 'Find',
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.chat_bubble_2_fill),
      label: 'Info',
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.person),
      label: 'My',
    ),
  ];

  var controllers = const [
    HomeController(),
    FindController(),
    InfoController(),
    MyController()
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: items,
          activeColor: CupertinoColors.destructiveRed,
          onTap: (index) {},
          currentIndex: 0,
          backgroundColor: CupertinoColors.white,
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(builder: (context) {
            return controllers[index];
          });
        });
  }
}
