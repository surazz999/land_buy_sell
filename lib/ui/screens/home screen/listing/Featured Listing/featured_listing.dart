import 'package:flutter/material.dart';
import 'package:property_selling/ui/screens/saved/Displaypage.dart';

class FeaturedListing extends StatefulWidget {
  const FeaturedListing({super.key});

  @override
  State<FeaturedListing> createState() => _FeaturedListingState();
}

class _FeaturedListingState extends State<FeaturedListing> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    final List<Map<String, dynamic>> propertiesList = [
      {
        "tex": "For Rent",
        "text": "Rs 18,000,000 ",
        "text1": "Fully Furnished House For Sale",
        "image": Image.asset(
          'assets/house4.jpg',
          fit: BoxFit.fill,
        )
      },
      {
        "tex": "For Rent",
        "text": "Rs 18,000,000",
        "text1": "Fully Furnished House For Sale",
        "image": Image.asset(
          'assets/house4.jpg',
          fit: BoxFit.fill,
        )
      },
      {
        "tex": "For Rent",
        "text": "Rs 18,000,000",
        "text1": "Fully Furnished House For Sale",
        "image": Image.asset(
          'assets/house4.jpg',
          fit: BoxFit.fill,
        )
      },
      {
        "tex": "For Rent",
        "text": "Rs 18,000,000",
        "text1": "Fully Furnished House For Sale",
        "image": Image.asset(
          'assets/house4.jpg',
          fit: BoxFit.fill,
        )
      }
    ];

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
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(20),
        // ),
        width: width * 1,
        height: heigth * 0.5,
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 6 / 4.5,
              mainAxisSpacing: 10.0),
          itemCount: propertiesList.length,
          itemBuilder: (context, index) {
            return Column(
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
                  propertiesList[index]['tex'],
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  propertiesList[index]['text'],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Container(
                  height: heigth * 0.1,
                  width: width * 0.4,
                  child: Text(
                    propertiesList[index]["text1"],
                    style: TextStyle(
                      overflow: TextOverflow.visible,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    maxLines: 2,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
