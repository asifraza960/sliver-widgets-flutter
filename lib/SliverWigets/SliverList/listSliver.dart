import 'package:flutter/material.dart';

class listSliver extends StatefulWidget {
  const listSliver({super.key});

  @override
  State<listSliver> createState() => _listSliverState();
}

class _listSliverState extends State<listSliver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverList Example'),
              background: Image.network(
                'https://source.unsplash.com/random/800x600',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
                title: Text('Item $index'),
                subtitle: Text('Subtitle for item $index'),
                leading: CircleAvatar(child: Text('$index')),
              ),
              childCount: 20, // Number of items
            ),
          ),
        ],
      ),
    );
  }
}
