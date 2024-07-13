import 'package:bdsodt_it/Model/WeekData.dart';
import 'package:bdsodt_it/View/UI%20Components/Widget/AddData.dart';
import 'package:bdsodt_it/View/UI%20Components/Screen2/TodoTask.dart';
import 'package:bdsodt_it/View/UI%20Components/Screen2/WeekScroller.dart';
import 'package:bdsodt_it/ViewModel/TodoVM.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    var w = MediaQuery.sizeOf(context).width;
    final ScrollController scrollController = ScrollController();

    return ChangeNotifierProvider(
      create: (context) => TodoVM()..getData(),
      child: SafeArea(
        child: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            //toolbarHeight: 70,
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            title: Text(
              'সময়রেখা',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
          ),
          body: Consumer<TodoVM>(
            builder: (context, todoVM, child) {
              return Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: h * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: w * (10 / w)),
                          child: Container(
                            height: w * (35 / w),
                            width: w * (120 / w),
                            child: Center(
                              child: Text(
                                'আজ, ১২ জুলাই ',
                                style: TextStyle(
                                    fontFamily: 'HindSiliguri Bold',
                                    fontSize: 14),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(w * (18 / w))),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: w * (10 / w)),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return AddData();
                              }));
                            },
                            child: Container(
                              height: w * (35 / w),
                              width: w * (120 / w),
                              child: Center(
                                child: Text(
                                  'নতুন যোগ করুন',
                                  style: TextStyle(
                                      fontFamily: 'HindSiliguri Regular',
                                      fontSize: 14,
                                      color: Color.fromRGBO(255, 255, 255, 1)),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.circular(w * (18 / w))),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: h * 0.031,
                    ),
                    Center(
                      child: WeekScroller(),
                    ),
                    SizedBox(
                      height: h * 0.030,
                    ),
                    Center(
                      child: TodoTask(),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
