import 'package:flutter/material.dart';
import 'package:flutterslive_widgets/ListView/ListWheel/am_pm.dart';
import 'package:flutterslive_widgets/ListView/ListWheel/hours.dart';
import 'package:flutterslive_widgets/ListView/ListWheel/mints.dart';

class WheelTimer extends StatefulWidget {
  const WheelTimer({super.key});

  @override
  State<WheelTimer> createState() => _WheelTimerState();
}

class _WheelTimerState extends State<WheelTimer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("ListWheelScrollView",style: TextStyle(
            color: Colors.white
          ),),
          centerTitle: true,
        ),
      body: Stack(
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 70,
              child: Expanded(
                child: Center(
                    child:ListWheelScrollView.useDelegate(
                        itemExtent: 50,
                        perspective: 0.005,
                        physics: BouncingScrollPhysics(),
                        diameterRatio: 1,
                        childDelegate: ListWheelChildBuilderDelegate(
                            childCount: 13,
                            builder:(context,index) {
                              return Myhours(
                                hours: index,
                              );
                            }
                        )
                    )
                ),
              ),
            ),
          SizedBox(width: 10,),
          SizedBox(
            width: 70,
            child: Expanded(
              child: Center(
                child:ListWheelScrollView.useDelegate(
                    itemExtent: 50,
                    perspective: 0.005,
                    physics: BouncingScrollPhysics(),
                     diameterRatio: 1,
                    childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 60,
                    builder:(context,index) {
                      return Mymints(
                        mint: index,
                      );
                    }
                )
                )
              ),
            ),
          ),
            SizedBox(width: 10,),
            SizedBox(
              width: 70,
              child: Expanded(
                child: Center(
                    child:ListWheelScrollView.useDelegate(
                        itemExtent: 50,
                        perspective: 0.005,
                        physics: BouncingScrollPhysics(),
                        diameterRatio: 1,
                        childDelegate: ListWheelChildBuilderDelegate(
                            childCount: 2,
                            builder:(context,index) {
                             if(index == 0){
                               return AmPm(isAtam: true);
                             } else {
                               return AmPm(isAtam: false);
                             }
                            }
                        )
                    )
                ),
              ),
            ),

            ]
        ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 50,
              color: Colors.white30,
              width: double.infinity,
            ),
          )
      ]
      )
    );
  }
}
