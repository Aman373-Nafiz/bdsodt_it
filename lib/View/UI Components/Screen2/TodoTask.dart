import 'package:bdsodt_it/Data/Converter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bdsodt_it/ViewModel/TodoVM.dart';
import 'package:collection/collection.dart'; 
class TodoTask extends StatelessWidget {
  const TodoTask({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    var w = MediaQuery.sizeOf(context).width;
    final todoVM = Provider.of<TodoVM>(context);
    todoVM.getData();
  
    return Container(
      height: h / 2,
      width: h / 2.4,
      decoration: BoxDecoration(
          color: Colors.white,
          border:
              Border.all(color: Color.fromRGBO(245, 245, 245, 1), width: 2.5),
          borderRadius: BorderRadius.circular(w * (20 / w))),
      child: Padding(
        padding: EdgeInsets.only(left: w * (14 / w), top: w * (16 / w)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'আজকের কার্যক্রম',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: w * (16 / w),
            ),
            Expanded(
  child: Container(
    child: SingleChildScrollView(
      child: Column(
        children: todoVM.datum
            .mapIndexed((index, e) => Padding(
                  padding: EdgeInsets.only(bottom: w * (12 / w)),
                  child: Container(
                    height: h / 4,
                    width: h / 2.6,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 2,
                          child: Container(
                            child: Padding(padding: EdgeInsets.only(right:w*(7/w)),child: Column(
                               
                              mainAxisAlignment: MainAxisAlignment.center,
                             
                              children: [
                                Text(
                                  Day_in_Bangla(e.date.toString())
                                      .toString(),
                                  style: TextStyle(
                                      color: (index%2==0)?Colors.black:Color.fromRGBO(42, 97, 238, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: w * (3 / w),
                                ),
                                Text(
                                  Time_in_Bangla(e.date.toString())
                                      .toString(),
                                  style: TextStyle(
                                      color: (index%2==0)?Colors.black:Color.fromRGBO(42, 97, 238, 1),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        Flexible(
                          flex: 5,
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: w * (17 / w), top: w * (8.5 / w)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: w * (5 / w),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        size: 15,
                                        color: Color.fromRGBO(253, 253, 253, 1),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        Time_in_Bangla(e.date.toString())
                                            .toString(),
                                        style: TextStyle(
                                          color: Color.fromRGBO(253, 253, 253, 1),
                                          fontSize: 14,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: w * (6 / w),
                                  ),
                                  Container(
                                    height: w * (70 / w),
                                    width: h / 4,
                                    child: Text(
                                      e.name,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromRGBO(253, 253, 253, 1),
                                      ),
                                      softWrap: true,
                                      overflow: TextOverflow.visible,
                                    ),
                                  ),
                                  SizedBox(
                                    height: w * (15 / w),
                                  ),
                                  Text(
                                    e.category,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Color.fromRGBO(253, 253, 253, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    height: w * (6 / w),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        size: 14,
                                        color: Color.fromRGBO(253, 253, 253, 1),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        e.location,
                                        style: TextStyle(
                                          color: Color.fromRGBO(253, 253, 253, 1),
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: index % 2 == 0 ? Color.fromRGBO(51, 111, 74, 1) : Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
            .toList(),
      ),
    ),
  ),
)
,
          ],
        ),
      ),
    );
  }
}
