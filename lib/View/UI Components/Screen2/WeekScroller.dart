import 'package:bdsodt_it/ViewModel/TodoVM.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Model/WeekData.dart';

class WeekScroller extends StatelessWidget {
  const WeekScroller({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.sizeOf(context).height;
    final todoVM = Provider.of<TodoVM>(context);
    
    return Container(
      height: h / 8,
      width: h / 2.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
          border:
              Border.all(color: Color.fromRGBO(245, 245, 245, 1), width: 2.5)),
      child: Container(
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: WeekData.length,
          itemBuilder: (context, index) {
            
            return Padding(
                padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                child: GestureDetector(
                  onTap: () {
                    todoVM.changeIndex(index);
                  },
                  child: Container(
                    width: 50,
                    height: 110,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: todoVM.selected_index == index
                              ? Color.fromRGBO(51, 111, 74, 1)
                              : Colors.transparent,
                          width: 1.5,
                        ),
                        color: Color.fromRGBO(245, 245, 245, 1),
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          '${WeekData[index].day}',
                          style: TextStyle(
                              color: Color.fromRGBO(200, 200, 200, 1),
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '${WeekData[index].date}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ));
          },
        ),
      ),
    );
  }
}
