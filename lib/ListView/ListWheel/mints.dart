import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mymints extends StatelessWidget {
  int mint;
   Mymints({required this.mint});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          mint.toString(),style:
        TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold
      ),),),
    );
  }
}
