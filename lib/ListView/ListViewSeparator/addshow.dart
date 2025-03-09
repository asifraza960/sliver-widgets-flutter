import 'package:flutter/material.dart';
import 'package:flutterslive_widgets/ListView/ListViewSeparator/components/team.dart';

class Addshow extends StatefulWidget {
  const Addshow({super.key});

  @override
  State<Addshow> createState() => _AddshowState();
}

class _AddshowState extends State<Addshow> {
  List<String> teamName = ['Team A','TeamB','Team C'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Teams")),

        backgroundColor: Colors.blue,
      ),
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
            if (index % 3 == 0 && index ~/ 2 < teamName.length) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: Text(
                    teamName[index ~/ 2],  // Correct mapping to teamName
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              );
            } else {
              return const SizedBox();  // Always return a widget
            }
          }

      ),
    );
  }
}
