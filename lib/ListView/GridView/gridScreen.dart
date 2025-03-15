import 'package:flutter/material.dart';
import 'package:flutterslive_widgets/ListView/GridView/Product.dart';

class Gridscreen extends StatefulWidget {
  const Gridscreen({super.key});

  @override
  State<Gridscreen> createState() => _GridscreenState();
}

class _GridscreenState extends State<Gridscreen> {
  late PageController _pageController;



@override
  void initState() {
  _pageController = PageController(
    initialPage: 1,
    viewportFraction: 0.70,

  );

    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 200,
            child:
            PageView.builder(
              itemCount: item.length,
                controller: _pageController,
                itemBuilder: (context,index) =>
                    Container(
                      margin: EdgeInsets.all(20),
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage(item[index].Img),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
            ),
            ),
           SizedBox(height: 40,),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   height: 40,
                   width: 70,
                   decoration: BoxDecoration(
                     color: Colors.white54,
                     borderRadius: BorderRadius.circular(20),
                   ),
                   child: Center(
                     child: Text("All",style: TextStyle(
                       color: Colors.white,
                       fontSize: 15
                     ),),
                   ),
                 ),
                 ElevatedButton(onPressed: (){}, child: Text("Popular")),
                 Container(
                   height: 40,
                   width: 70,
                   decoration: BoxDecoration(
                     color: Colors.white54,
                     borderRadius: BorderRadius.circular(20),
                   ),
                   child: Center(
                     child: Text("Faveriout",style: TextStyle(
                         color: Colors.white,
                         fontSize: 15
                     ),),
                   ),
                 ),
                 Container(
                   height: 40,
                   width: 70,
                   decoration: BoxDecoration(
                     color: Colors.white54,
                     borderRadius: BorderRadius.circular(20),
                   ),
                   child: Center(
                     child: Text("common",style: TextStyle(
                         color: Colors.white,
                         fontSize: 15
                     ),),
                   ),
                 )
               ],
             ),
           GridView.builder(
             shrinkWrap: true,
             itemCount: 12,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                 mainAxisSpacing: 12
               ),
               itemBuilder: (context,index) =>
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Container(
                       decoration: BoxDecoration(
                           color: Colors.blue,
                         borderRadius: BorderRadius.circular(20),
                           image: DecorationImage(image: AssetImage(item[index].Img),
                             fit: BoxFit.cover
                           )
                       ),
                     ),
                   )
           )
          ],
        ),
      ),
    );
  }
}
