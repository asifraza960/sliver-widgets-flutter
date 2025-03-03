import 'package:flutter/material.dart';

class Animatedpage extends StatelessWidget {
  Animatedpage({super.key});

  // Masjid Names
  List<String> name = [
    'Masjid al-Haram ',
    'Al-Masjid an-Nabawi',
    'Sheikh Zayed Grand Mosque ',
    'Sultan Ahmed Mosque',
    'Al-Aqsa Mosque ',
  ];

  // Image Paths
  List<String> imgPath = [
    'assets/images/Masjid_al_Haram1.jpg',
    'assets/images/Al_Masjid_an_Nabawi2.jpg',
    'assets/images/Sultan_Ahmed_Mosque4.jpg',
    'assets/images/Sheikh_Zayed_Grand_Mosque3.jpg',
    'assets/images/Al_Aqsa_Mosqu.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8),
      itemCount: name.length,
      itemBuilder: (context, index) => SizedBox(
        height: 100,
        width: double.infinity,
        child: Card(
          color: Colors.white,
          elevation: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnimatedImageScreen(
                          imagePath: imgPath[index],
                          name: name[index],
                        ),
                      ),
                    );
                  },
                  child: Hero(
                    tag: imgPath[index], // ✅ Ensure tag matches
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        image: DecorationImage(
                          image: AssetImage(imgPath[index]),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    name[index],
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Staggered Animated Fullscreen Image
class AnimatedImageScreen extends StatefulWidget {
  final String imagePath;
  final String name;

  AnimatedImageScreen({required this.imagePath, required this.name});

  @override
  _AnimatedImageScreenState createState() => _AnimatedImageScreenState();
}

class _AnimatedImageScreenState extends State<AnimatedImageScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(milliseconds: 700),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.name, style: TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: Hero(
            tag: widget.imagePath, // ✅ Ensure tag matches
            child: Image.asset(widget.imagePath, fit: BoxFit.contain),
          ),
        ),
      ),
    );
  }
}
