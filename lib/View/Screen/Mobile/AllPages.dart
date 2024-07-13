import 'package:bdsodt_it/View/Screen/Mobile/Account.dart';
import 'package:bdsodt_it/View/Screen/Mobile/Filter.dart';
import 'package:bdsodt_it/View/Screen/Mobile/Home.dart';
import 'package:bdsodt_it/View/Screen/Mobile/Todo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class Presentation extends StatefulWidget {
  const Presentation({super.key});

  @override
  State<Presentation> createState() => _PresentationState();
}

class _PresentationState extends State<Presentation> {
  @override
  int selected = 0;
  bool camera = false;
  final controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.sizeOf(context).width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        bottomNavigationBar: StylishBottomBar(
          elevation: 0,
          option: DotBarOptions(
            dotStyle: DotStyle.circle,
            gradient: const LinearGradient(
              colors: [
                Color.fromRGBO(51, 111, 74, 1),
                Color.fromRGBO(134, 181, 96, 1)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          items: [
            BottomBarItem(
                icon: Image.asset('assets/Home1.jpg'),
                title: Image.asset('assets/Home.jpg')),
            BottomBarItem(
              icon: Image.asset('assets/Calender.png'), //Icon(
              //Icons.calendar_month), Image.asset('assets/Calender.png'),

              title: Image.asset('assets/Calender1.jpg'), //Icon(Icons
              // .calendar_month_rounded) //
            ),
            BottomBarItem(
                icon: Image.asset(
                  'assets/third.png',
                  height: w * (50 / w),
                  width: w * (50 / w),
                ),
                title: Image.asset(
                  'assets/third1.png',
                  height: w * (50 / w),
                  width: w * (50 / w),
                )),
            BottomBarItem(
                icon: Icon(
                  Icons.person_2_outlined,
                  color: Colors.black,
                ),
                title: Icon(Icons.person_2_rounded, color: Colors.black))
          ],
          hasNotch: true,
          fabLocation: StylishBarFabLocation.center,
          currentIndex: selected,
          notchStyle: NotchStyle.circle,
          onTap: (index) {
            if (index == selected) return;
            controller.jumpToPage(index);
            setState(() {
              selected = index;
            });
          },
        ),
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {
            setState(() {
              camera != camera;
            });
          },
          backgroundColor:
              (camera) ? Colors.white : Color.fromRGBO(51, 111, 74, 1),
          child: Icon(CupertinoIcons.camera,
              color: (camera) ? Color.fromRGBO(51, 111, 74, 1) : Colors.white),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SafeArea(
          child: PageView(
            controller: controller,
            children: [Home(), Todo(), Filter(), Account()],
          ),
        ),
      ),
    );
  }
}
