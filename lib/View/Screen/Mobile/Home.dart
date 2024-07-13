import 'package:bdsodt_it/View/UI%20Components/Screen1/MenuView.dart';
import 'package:bdsodt_it/View/UI%20Components/Screen1/TimeCard.dart';
import 'package:flutter/material.dart';

import '../../UI Components/Screen1/IntroCard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    var w = MediaQuery.sizeOf(context).width;
    return Scaffold(
      drawer: Drawer(),
        appBar: AppBar(
          //toolbarHeight: 70,
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          title: Row(
            children: [
              Image.asset(
                'assets/Demo Appbar.jpg',
              ),
              SizedBox(
                width: w * 0.023,
              ),
              Image.asset(
                'assets/Flutter Task.png',
              )
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: w * 0.04),
              child: Image.asset('assets/Bell Icon.jpg'),
            ),
          ],
        ),
        body: Center(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: h * 0.045,
          ),
          Center(
            child: IntroCard(),
          ),
          SizedBox(
            height: h * 0.030,
          ),
          Center(child: TimeCard(),),
          Padding(padding: EdgeInsets.only(left:w*(15/w)),child: Text(
          'সময় অতিবাহিত',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),),
        SizedBox(
            height: h * 0.030,
          ),
          MenuView()
         
        ],
      ),)
    );
  }
}
