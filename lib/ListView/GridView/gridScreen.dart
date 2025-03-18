import 'package:flutter/material.dart';
import 'package:flutterslive_widgets/ListView/GridView/Product.dart';

class Gridscreen extends StatefulWidget {
  const Gridscreen({super.key});

  @override
  State<Gridscreen> createState() => _GridscreenState();
}

class _GridscreenState extends State<Gridscreen> with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _animationController;
  late Animation<double> _animation;

  // Track the selected button index
  int selectedButton = 0;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(
      initialPage: 1,
      viewportFraction: 0.70,
    );

    _animationController = AnimationController(
      
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInExpo,
      ),
    );

    // Start the animation
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  // Function to change the button's color on click
  void changeButtonColor(int index) {
    setState(() {
      selectedButton = index;
      _animationController.reset(); // Reset animation on button click
      _animationController.forward(); // Restart animation
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // PageView for Image Slider
            Container(
              height: 300,
              color: Colors.yellow,
              child: SizedBox(
                height: 200,
                child: PageView.builder(
                  itemCount: item.length,
                  controller: _pageController,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.all(20),
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(item[index].Img),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(color: Colors.black12),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(-1, -1),
                          color: Colors.white,
                          blurRadius: 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 40),

            // Button Row with Clickable Buttons
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildElevatedButton(0, "All"),
                  buildElevatedButton(1, "Popular"),
                  buildElevatedButton(2, "Favorites"),
                  buildElevatedButton(3, "Trending"),
                ],
              ),
            ),

            // GridView with Animated Items
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 12,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
              ),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) {
                    return Opacity(
                      opacity: _animation.value,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(item[index].Img),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(color: Colors.black12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(1, -1),
                              blurRadius: 1,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Custom method to create an ElevatedButton with color change
  ElevatedButton buildElevatedButton(int index, String title) {
    return ElevatedButton(
      onPressed: () => changeButtonColor(index),
      style: ElevatedButton.styleFrom(
        backgroundColor:
        selectedButton == index ? Colors.yellowAccent : Colors.white,
      ),
      child: Text(title),
    );
  }
}
