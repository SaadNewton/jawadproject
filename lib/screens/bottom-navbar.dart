import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jawad_project/screens/home/view.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late final PageController controller;
  int currentIndex = 0;
  List<IconData> iconList = [ //list of icons that required by animated navigation bar.
    Icons.home_outlined,
    Icons.search,
    Icons.favorite_border,
    Icons.person_outline
  ];
  int _bottomNavIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = PageController(initialPage: currentIndex);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        children: [
          HomePage(),
          Container(),
          Container(),
          Container()
        ],
      ), //destination screen
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white70,
        onPressed: (){},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/images/pen.png'),
        ),
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: Colors.white38.withOpacity(0.3),
        iconSize: 30,
        icons: iconList,
        inactiveColor: Colors.white70,
        activeColor: Colors.white,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );;
  }
}
