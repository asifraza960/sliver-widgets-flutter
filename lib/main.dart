import 'package:flutter/material.dart';
import 'package:flutterslive_widgets/ListView/GridView/gridScreen.dart';
import 'package:flutterslive_widgets/ListView/ListViewCustom/home.dart';
import 'package:flutterslive_widgets/ListView/ListViewSeparator/addshow.dart';
import 'package:flutterslive_widgets/ListView/ListviewBuilder/MosqueDetails.dart';
import 'package:flutterslive_widgets/ListView/Scrolling_Direction/Scroll.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      home: Gridscreen(),

    );
  }
}


