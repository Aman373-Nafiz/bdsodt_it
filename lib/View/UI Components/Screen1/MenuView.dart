import 'package:flutter/material.dart';

class MenuView extends StatelessWidget {
  MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    var w = MediaQuery.sizeOf(context).width;
    return Expanded(
        child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: w * (110 / w),
              width: w * (80 / w),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage('assets/Menu1.jpg'))),
            ),
            Container(
              height: w * (110 / w),
              width: w * (80 / w),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage('assets/Menu2.jpg'))),
            ),
            Container(
              height: w * (110 / w),
              width: w * (80 / w),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage('assets/Menu3.jpg'))),
            )
          ],
        ),
        SizedBox(height: h*0.01,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: w * (110 / w),
              width: w * (80 / w),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage('assets/Menu4.jpg'))),
            ),
            Container(
              height: w * (110 / w),
              width: w * (80 / w),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage('assets/Menu5.jpg'))),
            ),
            Container(
              height: w * (110 / w),
              width: w * (80 / w),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage('assets/Menu6.jpg'))),
            )
          ],
        )
      ],
    ));
  }
}
