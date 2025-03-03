import 'package:flutter/material.dart';

import 'ListView/Components/ScrollableList.dart';
import 'ListView/ContectNumber/CardListView.dart';
import 'ListView/ContectNumber/Animatedpage.dart';
import 'ListView/Masjid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      home: Animatedpage(),

    );
  }
}

