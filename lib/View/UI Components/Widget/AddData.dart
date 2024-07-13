import 'package:flutter/material.dart';

class AddData extends StatelessWidget {
  const AddData({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    var w = MediaQuery.sizeOf(context).width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Color.fromRGBO(200, 200, 200, 1),
              size: 23,
            ),
          ),
          backgroundColor: Color.fromRGBO(253, 253, 253, 1),
          title: Text(
            'নতুন যোগ করুন',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Padding(
                padding: EdgeInsets.only(left: w * (18 / w)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: h * 0.042,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'অনুচ্ছেদ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 13),
                            child: Text(
                              '৪৫ শব্দ',
                              style: TextStyle(
                                  color: Color.fromRGBO(210, 210, 210, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: w * (6 / w),
                      ),
                      Container(
                        height: w * (45 / w),
                        width: h / 2.4,
                        child: TextFormField(
                            decoration: InputDecoration(
                          hintText: 'অনুচ্ছেদ লিখুন',
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(200, 200, 200, 1),
                            fontSize: 15,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(245, 245, 245, 1),
                            ),
                          ),
                        )),
                      ),
                      SizedBox(
                        height: w * (12.5 / w),
                      ),
                      Text(
                        'অনুচ্ছেদের বিভাগ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: w * (6 / w),
                      ),
                      Container(
                        height: w * (45 / w),
                        width: h / 2.4,
                        child: TextFormField(
                            decoration: InputDecoration(
                          hintText: 'অনুচ্ছেদের বিভাগ নির্বাচন করুন',
                          suffixIcon: Icon(Icons.arrow_forward_outlined),
                          suffixIconColor: Color.fromRGBO(200, 200, 200, 1),
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(200, 200, 200, 1),
                            fontSize: 15,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(245, 245, 245, 1),
                            ),
                          ),
                        )),
                      ),
                      SizedBox(
                        height: w * (12.5 / w),
                      ),
                      Text(
                        'তারিখ ও সময়',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: w * (6 / w),
                      ),
                      Container(
                        height: w * (45 / w),
                        width: h / 2.4,
                        child: TextFormField(
                            decoration: InputDecoration(
                          hintText: 'নির্বাচন করুন',
                          suffixIcon: Icon(Icons.arrow_forward_outlined),
                          suffixIconColor: Color.fromRGBO(200, 200, 200, 1),
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(200, 200, 200, 1),
                            fontSize: 15,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(245, 245, 245, 1),
                            ),
                          ),
                        )),
                      ),
                      SizedBox(
                        height: w * (12.5 / w),
                      ),
                      Text(
                        'স্থান',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: w * (6 / w),
                      ),
                      Container(
                        height: w * (45 / w),
                        width: h / 2.4,
                        child: TextFormField(
                            decoration: InputDecoration(
                          hintText: 'নির্বাচন করুন',
                          suffixIcon: Icon(Icons.arrow_forward_outlined),
                          suffixIconColor: Color.fromRGBO(200, 200, 200, 1),
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(200, 200, 200, 1),
                            fontSize: 15,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color: Color.fromRGBO(245, 245, 245, 1),
                            ),
                          ),
                        )),
                      ),
                      SizedBox(
                        height: w * (15 / w),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'অনুচ্ছেদের বিবরণ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: w * (13 / w)),
                            child: Text(
                              '১২০ শব্দ',
                              style: TextStyle(
                                  color: Color.fromRGBO(210, 210, 210, 1),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: w * (6 / w),
                      ),
                      Container(
                          height: 200,
                          width: h / 2.4,
                          decoration: BoxDecoration(
                              border: Border.all(
                            width: 1.5,
                            color: Color.fromRGBO(210, 210, 210, 1),
                          )),
                          child: Column(
                            children: [
                              Text(
                                'নির্বাচন করুন',
                                style: TextStyle(
                                    color: Color.fromRGBO(210, 210, 210, 1),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          )),
                      SizedBox(
                        height: h * 0.04,
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              var h = MediaQuery.sizeOf(context).height;
                              var w = MediaQuery.sizeOf(context).width;
                              return AlertDialog(
                                // title: Text('Alert Dialog Title'),
                                actions: [
                                  Center(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: w * (30 / w),
                                        width: h / 4,
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(51, 111, 74, 1),
                                          borderRadius: BorderRadius.circular(
                                              w * (12 / w)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'আরও যোগ করুন',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                                content: SizedBox(
                                  height:
                                      h * 0.3, // Adjust the height as needed
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          height: w * (7 / w),
                                        ),
                                        Center(
                                          child: Image.asset('assets/tick.jpg'),
                                        ),
                                        SizedBox(
                                          height: w * (10 / w),
                                        ),
                                        Center(
                                          child: Text(
                                            'নতুন অনুচ্ছেদ সংরক্ষন',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 17),
                                          ),
                                        ),
                                        SizedBox(
                                          height: w * (4.5 / w),
                                        ),
                                        Center(
                                          child: Text(
                                            'আপনার সময়রেখাতে নতুন অনুচ্ছেদ সংরক্ষণ সম্পুর্ন হয়েছে ',
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  200, 200, 200, 1),
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Container(
                          height: w * (45 / w),
                          width: h / 2.4,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(51, 111, 74, 1),
                              borderRadius:
                                  BorderRadius.circular(w * (12 / w))),
                          child: Center(
                            child: Text(
                              'সংরক্ষন করুন',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ))),
      ),
    );
  }
}
