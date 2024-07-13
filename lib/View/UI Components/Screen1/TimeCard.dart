import 'package:bdsodt_it/View/UI%20Components/Screen1/CircularProgressWithLabel.dart';
import 'package:bdsodt_it/View/UI%20Components/Screen1/DateRange.dart';

import 'package:flutter/material.dart';

class TimeCard extends StatelessWidget {
  const TimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    var w = MediaQuery.sizeOf(context).width;
    return Container(
      height: h / 6,
      width: h / 2.2,
      color: Color.fromRGBO(255, 255, 255, 1),
      child: Row(
        children: [
          CircularProgressWithLabel(),
          SizedBox(width: w*0.028),
           DateRange(),
          
          
        
        ],
      ),
    );
  }
}
