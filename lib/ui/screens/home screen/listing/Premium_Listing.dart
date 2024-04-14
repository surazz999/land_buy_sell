import 'package:flutter/material.dart';
import 'package:property_selling/ui/screens/saved/Displaypage.dart';

class PremiumListing extends StatefulWidget {
  const PremiumListing({super.key});

  @override
  State<PremiumListing> createState() => _PremiumListingState();
}

class _PremiumListingState extends State<PremiumListing> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    final List<Map<String, dynamic>> propertiesList = [
      {
        "text": "Rs 18,000,000 ",
        "text1": "Fully Furnished House For Sale",
        "text2": "area 0-6-0-3",
        "image": Image.asset(
          'assets/house1.jpg',
          fit: BoxFit.fill,
        )
      },
      {
        "text": "Rs 18,000,000",
        "text1": "Fully Furnished House For Sale",
        "text2": "area 0-6-0-3",
        "image": Image.asset(
          'assets/house1.jpg',
          fit: BoxFit.fill,
        )
      },
      {
        "text": "Rs 18,000,000",
        "text1": "Fully Furnished House For Sale",
        "text2": "area 0-6-0-3",
        "image": Image.asset(
          'assets/house1.jpg',
          fit: BoxFit.fill,
        )
      },
      {
        "text": "Rs 18,000,000",
        "text1": "Fully Furnished House For Sale",
        "text2": "area 0-6-0-3",
        "image": Image.asset(
          'assets/house1.jpg',
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
            crossAxisCount: 1, childAspectRatio: 1.1, mainAxisSpacing: 10.0),
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
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Container(
                    width: width * 0.7,
                    height: heigth * 0.28, // Set the height of the image
                    child: propertiesList[index]['image'],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  propertiesList[index]['text'],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Container(
                  width: width * 0.8,
                  child: Text(
                    propertiesList[index]["text1"],
                    style: TextStyle(
                      overflow: TextOverflow.visible,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    maxLines: 1,
                  ),
                ),
                Text(
                  propertiesList[index]['text2'],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
