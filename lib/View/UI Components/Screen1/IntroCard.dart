import 'package:flutter/material.dart';

class IntroCard extends StatelessWidget {
  const IntroCard({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    var w = MediaQuery.sizeOf(context).width;
    return Container(
      height: h / 8,
      width: h / 2.4,
      child: Padding(
        padding: EdgeInsets.all(w * 0.01),
        child: Row(
          children: [
            Padding(
                padding: EdgeInsets.only(left: w * 0.03),
                child: Container(
                  height: w / 6,
                  width: w / 6,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/Man.jpg'))),
                )),
            SizedBox(width: w * 0.04),
            Padding(
              padding: EdgeInsets.only(top: w * 0.015),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'মোঃ মোহাইমেনুল রেজা',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'HindSiliguri Bold',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: w * 0.0091,
                  ),
                  Text(
                    'সফটবিডি লিমিটেড',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'HindSiliguri Regular',
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 15,
                        color: Colors.black,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'ঢাকা',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(w * 0.004),
          color: Color.fromRGBO(255, 255, 255, 1),
          //border:
          //Border.all(color: Color.fromRGBO(245, 245, 245, 1), width: 3),
          boxShadow: [
            BoxShadow(
              color: Colors.black54.withOpacity(0.5), // Shadow color
              spreadRadius: 2, // Spread radius
              blurRadius: 2, // Blur radius
              offset: Offset(0, 0),
            )
          ]),
    );
  }
}
