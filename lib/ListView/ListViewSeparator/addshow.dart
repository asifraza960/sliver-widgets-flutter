import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutterslive_widgets/ListView/ListViewSeparator/components/team.dart';

class Addshow extends StatefulWidget {
  const Addshow({super.key});

  @override
  State<Addshow> createState() => _AddshowState();
}

class _AddshowState extends State<Addshow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemCount: teamlist.length,
        itemBuilder: (context, index) {
          return Card(
            shadowColor: Colors.red,
            elevation: 3,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(teamlist[index].img),
                radius: 30,
              ),
              title: Text(teamlist[index].title),
              trailing: Icon(teamlist[index].icon),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
