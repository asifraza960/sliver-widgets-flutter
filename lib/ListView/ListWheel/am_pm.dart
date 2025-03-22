import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AmPm extends StatelessWidget {
  final bool isAtam;
   AmPm({super.key,required this.isAtam});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
          isAtam == true ?"am" : "pm",
             style: TextStyle(
               color: Colors.white,
                fontSize: 42,
               fontWeight: FontWeight.bold,
             ),
      )
      ),
    );
  }
}
