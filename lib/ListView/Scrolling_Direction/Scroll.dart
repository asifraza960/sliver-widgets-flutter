import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Scroll extends StatefulWidget {
  const Scroll({super.key});

  @override
  State<Scroll> createState() => _ScrollState();
}
class _ScrollState extends State<Scroll> {
  late ScrollController _controller;
  BoxShape _shape = BoxShape.circle;
  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(
        (){
          if(
          _controller.position.userScrollDirection
          == ScrollDirection.forward
          ){
            _shape =BoxShape.rectangle;
          }
          else{
            _shape = BoxShape.circle;
          }
          setState(() {
            _shape = _controller.position.userScrollDirection == ScrollDirection.forward ? _shape = BoxShape.rectangle: _shape = BoxShape.circle;
          });
        },
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListView.custom(
        controller: _controller,
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: 50,
              (context,index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  color: Colors.cyan,
                ),
              )
          ),
      ),
      floatingActionButton: OverflowBar(
        children: [
          Container(
            height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: _shape,
          color: Colors.blue,
        ),
          )
        ],
      )

    );

  }
}
