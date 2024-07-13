import 'package:flutter/material.dart';

class CircularProgressWithLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.sizeOf(context).width;
    return Row(
      children: [
        Padding(
            padding: EdgeInsets.only(left: w * 0.002),
            child: Stack(
              children: [
                Container(
                  height: 120,
                  width: 120,
                  child: CircularProgressIndicator(
                    value: 0.18, color:Color.fromRGBO(51, 111, 74, 1), 
                    strokeWidth: 6,backgroundColor: Color.fromRGBO(245, 245, 245, 1),
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 10,
                  right: 10,
                  bottom: 10,
                  child: Row(
                    children: [
                      Text(
                        '৬ মাস',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        '৬ দিন',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                
              ],
            )),
      ],
    );
  }
}
