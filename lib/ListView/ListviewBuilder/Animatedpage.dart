import 'package:flutter/material.dart';

class Masjid extends StatefulWidget {
  final String imagePath;
  final String name;

  const Masjid({required this.imagePath, required this.name, super.key});

  @override
  _MasjidState createState() => _MasjidState();
}

class _MasjidState extends State<Masjid> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 700), // ✅ Duration fixed
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
          parent: _controller,
          curve: Interval(0.0, 1.0, curve: Curves.easeOut)),
    );
    _opacityAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      // ✅ Opacity range fixed
      CurvedAnimation(
          parent: _controller, curve: Interval(0.5, 1.0, curve: Curves.linear)),
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
        title: Text(widget.name, style: const TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        // ✅ 2( ko hata diya
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return ScaleTransition(
              scale: _scaleAnimation,
              child: Opacity(
                opacity:
                    _opacityAnimation.value, // ✅ Now opacity updates properly
                child: Hero(
                  tag: widget.imagePath,
                  child: Image.asset(widget.imagePath, fit: BoxFit.contain),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
