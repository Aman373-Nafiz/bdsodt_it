
import 'package:flutter/material.dart';

class DateRange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.sizeOf(context).width;
    var h = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: EdgeInsets.only(top: w * 0.017),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'মেয়াদকাল',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: w * 0.009,
            ),
            Row(children: [Icon(Icons.date_range_outlined),SizedBox(width: 5,),Text(
              '১৮ জানুয়ারি ২০২৪ - ৩১ জানুয়ারি ২০৩০',
              style: TextStyle(fontSize: 13,fontWeight: FontWeight.w700),
            ),],),
            
            SizedBox(
              height: w * 0.012,
            ),
            Text(
              'আরও বাকি',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: w * (30 / w),
                            width: w * (30 / w),
                            child: Center(child: Text('০', style: TextStyle(fontSize: 11))),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 245, 245, 1),
                              border: Border.all(color: Colors.red, width: 0.5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          SizedBox(width: w * (3 / w),),
                          Container(
                            height: w * (30 / w),
                            width: w * (30 / w),
                            child: Center(child: Text('৫', style: TextStyle(fontSize: 11))),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 245, 245, 1),
                              border: Border.all(color: Colors.red, width: 0.5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text('বছর', style: TextStyle(color: Colors.red, fontSize: 13)),
                    ],
                  ),
                ),
                SizedBox(width: w * (8 / w),),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: w * (30 / w),
                            width: w * (30 / w),
                            child: Center(child: Text('০', style: TextStyle(fontSize: 11))),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 245, 245, 1),
                              border: Border.all(color: Colors.red, width: 0.5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          SizedBox(width: w * (3 / w),),
                          Container(
                            height: w * (30 / w),
                            width: w * (30 / w),
                            child: Center(child: Text('৫', style: TextStyle(fontSize: 11))),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 245, 245, 1),
                              border: Border.all(color: Colors.red, width: 0.5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text('মাস', style: TextStyle(color: Colors.red, fontSize: 13)),
                    ],
                  ),
                ),
                SizedBox(width: w * (8 / w),),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: w * (30 / w),
                            width: w * (30 / w),
                            child: Center(child: Text('১', style: TextStyle(fontSize: 11))),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 245, 245, 1),
                              border: Border.all(color: Colors.red, width: 0.5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          SizedBox(width: w * (3 / w),),
                          Container(
                            height: w * (30 / w),
                            width: w * (30 / w),
                            child: Center(child: Text('২', style: TextStyle(fontSize: 11))),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(245, 245, 245, 1),
                              border: Border.all(color: Colors.red, width: 0.5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text('দিন', style: TextStyle(color: Colors.red, fontSize: 13)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
