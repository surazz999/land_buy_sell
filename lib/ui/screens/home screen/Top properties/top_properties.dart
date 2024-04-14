import 'package:flutter/material.dart';
import 'package:property_selling/ui/screens/saved/Displaypage.dart';

class TopProperties extends StatefulWidget {
  const TopProperties({super.key});

  @override
  State<TopProperties> createState() => _TopPropertiesState();
}

class _TopPropertiesState extends State<TopProperties> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    final List<Map<String, dynamic>> propertiesList = [
      {
        "text": "Rs 18,000,000 ",
        "text2": "for rent",
        "text1": "Fully Furnished House For rent",
        "image": Image.asset(
          'assets/house2.jpg',
          fit: BoxFit.fill,
        )
      },
      {
        "text": "Rs 18,000,000",
        "text1": "Fully Furnished House For Sale",
        "text2": "for sell",
        "image": Image.asset(
          'assets/house2.jpg',
          fit: BoxFit.fill,
        )
      },
      {
        "text": "Rs 18,000,000",
        "text1": "Fully Furnished House For Sale",
        "text2": "for sell",
        "image": Image.asset(
          'assets/house2.jpg',
          fit: BoxFit.fill,
        )
      },
      {
        "text": "Rs 18,000,000",
        "text1": "Fully Furnished House For rent",
        "text2": "for rent",
        "image": Image.asset(
          'assets/house2.jpg',
          fit: BoxFit.fill,
        )
      }
    ];
    return Container(
      padding: const EdgeInsets.only(left: 10),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(20),
      // ),
      width: width * 1,
      height: heigth * 0.4,
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 6 / 3, mainAxisSpacing: 30.0),
        itemCount: propertiesList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      DisplayPage(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return child;
                  },
                ),
              );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Stack(
                children: [
                  Container(
                    height: heigth * 0.4, // Set the height of the image
                    child: propertiesList[index]['image'],
                  ),
                  Positioned(
                    top: 230,
                    child: Text(
                      propertiesList[index]['text'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 250,
                    child: Container(
                      width: width * 0.43,
                      child: Text(
                        propertiesList[index]["text1"],
                        style: TextStyle(
                          overflow: TextOverflow.visible,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 5,
                    child: Container(
                      height: heigth * 0.03,
                      width: width * 0.16,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        propertiesList[index]["text2"],
                        style: TextStyle(
                          overflow: TextOverflow.visible,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
