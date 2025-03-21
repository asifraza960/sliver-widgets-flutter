import 'dart:math';

import 'package:flutter/material.dart';

class SliverBar extends StatelessWidget {
 
   SliverBar({super.key});
   Random random = Random();
   static const max = 255;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: true,
            snap: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Ink.image(image: AssetImage("asset/images/tea.jpg"),fit: BoxFit.cover,),
            ),
          ),
          SliverGrid.builder(
            itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
              itemBuilder: (context,index)=> Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(
                        random.nextInt(max),
                        random.nextInt(max),
                        random.nextInt(max),
                        random.nextInt(max),

                    ),
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Center(child: Text('$index')),
                ),
              )
          )
        ],
      ),
    );
  }
}
