import 'package:flutter/material.dart';

class Team {
  final String title;
  final String img;
  final icon;

  Team({
    required this.title,
    required this.img,
    required this.icon,
  });
}
List<Team> teamMember = [
  Team(title: 'Alex', img: 'asset/images/alex.webp', icon: Icons.flag_circle_outlined),
  Team(title: 'Messi', img: 'asset/images/messi.webp', icon: Icons.emoji_flags_outlined,),
  Team(title: 'Ronaldo', img: 'asset/images/ronaldo.webp', icon: Icons.flaky_rounded),
  Team(title: 'Salm', img: 'asset/images/salm.webp', icon: Icons.flutter_dash_outlined),
  Team(title: 'Emirates', img: 'asset/images/emirates.webp', icon: Icons.local_florist),
  Team(title: 'David', img: 'asset/images/david.webp', icon: Icons.female_sharp)
];
