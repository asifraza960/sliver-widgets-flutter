import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myhours extends StatelessWidget {
  int hours;
   Myhours({super.key,required this.hours});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        hours.toString(),
        style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 42
      ),),
    );
  }
}
