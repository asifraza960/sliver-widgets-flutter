import 'package:flutter/material.dart';
import 'package:flutterslive_widgets/ListView/ListViewSeparator/components/team.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: teamlist.length,
          (context, index) => ListTile(
            trailing: CircleAvatar(
              backgroundImage: AssetImage(teamlist[index].img),
            ),
            title: Text(teamlist[index].title),
            subtitle: Text(
              teamlist[index].title,
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ),
      ),
    );
  }
}

// ListView.custom(
// childrenDelegate: SliverChildBuilderDelegate(
// childCount: teamlist.length,
// (context,index)=> ListTile(
// trailing: CircleAvatar(
// backgroundImage: AssetImage(teamlist[index].img),
// ),
// title: Text(teamlist[index].title),
// subtitle: Text(teamlist[index].title,style: TextStyle(
// color: Colors.black54
// ),),
// ),
// ),
//
// ),
