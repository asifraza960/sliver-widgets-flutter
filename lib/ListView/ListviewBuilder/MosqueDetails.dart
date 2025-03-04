import 'package:flutter/material.dart';
import 'package:flutterslive_widgets/ListView/ListviewBuilder/Animatedpage.dart';

class MosqueDetails extends StatelessWidget {
  MosqueDetails({super.key});
  //  masjid name
  List<String> Name = [
    'Masjid al-Haram ',
    'Al-Masjid an-Nabawi',
    'Sheikh Zayed Grand Mosque ',
    'Sultan Ahmed Mosque',
    'Al-Aqsa Mosque ',
    'Hassan II Mosque',
    'Nasir al-Mulk Mosque',
    'Badshahi Mosque',
    'Sultan Qaboos Grand Mosque ',
    'Putra Mosque',
    'Faisal Mosque'
  ];
  // city name
  List<String> City = [
    ' Makkah, Saudi Arabia 🕋',
    'Madinah, Saudi Arabia 🌿',
    'Abu Dhabi, UAE ✨',
    ' Istanbul, Turkey 🏛️',
    'Jerusalem, Palestine 🕊️',
    ' Casablanca, Morocco 🌊',
    'Shiraz, Iran 🎨',
    ' Lahore, Pakistan 🕌',
    'Muscat, Oman 🌟',
    'Putrajaya, Malaysia 💖',
    'Islamabad, Pakistan ⛰️'
  ];
  // img list
  List imgpath = [
    'asset/images/Masjid al-Haram1.jpg',
    'asset/images/Al-Masjid an-Nabawi2.jpg',
    'asset/images/Sultan Ahmed Mosque 4.jpg',
    'asset/images/Sheikh Zayed Grand Mosque 3–.jpg',
    'asset/images/Al-Aqsa Mosqu.jpg',
    'asset/images/Hassan II Mosque 6.jpg',
    'asset/images/Nasir al-Mulk Mosque 7.jpg',
    'asset/images/Badshahi Mosque 8.jpg',
    'asset/images/Sultan Qaboos Grand Mosque 9.jpg',
    'asset/images/putra11.jpg',
    'asset/images/Faisal Mosque – 11.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("The World's Most Beautiful Mosques",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15
        ),)),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
      padding: EdgeInsets.all(8), // Adds spacing around the list
      itemCount: Name.length,
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
                              builder: (context) => Masjid(
                                    imagePath: imgpath[index],
                                    name: Name[index],
                                  )));
                    },
                    child: Hero(
                      tag: imgpath[index],
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            image: DecorationImage(
                                image: AssetImage(
                                  imgpath[index],
                                ),
                                fit: BoxFit.cover),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 5,
                              )
                            ]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          Name[index],
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(City[index])
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
      )
    );
  }
}
