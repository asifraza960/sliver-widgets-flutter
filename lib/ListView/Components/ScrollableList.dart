import 'package:flutter/material.dart';

class Scrollablelist extends StatefulWidget {
  const Scrollablelist({super.key});

  @override
  State<Scrollablelist> createState() => _ScrollablelistState();
}

class _ScrollablelistState extends State<Scrollablelist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("ListView")),
      ),
      body: ListView(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.blue,
        ),
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.green,
        ),
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.amberAccent,
        ),
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.brown,
        ),
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.black,
        ),
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.transparent,
        ),
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.purpleAccent,
        ),
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.amberAccent,
        ),
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.cyan,

        ),
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.amber,
        )
      ],
      )
    );
  }
}
