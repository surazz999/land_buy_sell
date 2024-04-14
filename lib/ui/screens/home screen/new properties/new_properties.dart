import 'package:flutter/material.dart';
import 'package:property_selling/ui/screens/saved/Displaypage.dart';

class NewProperties extends StatefulWidget {
  const NewProperties({super.key});

  @override
  State<NewProperties> createState() => _NewPropertiesState();
}

class _NewPropertiesState extends State<NewProperties> {
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    final List<Map<String, dynamic>> newproperties = [
      {
        "text": "37 minutes ago",
        "text1": "Elegant Living: Luxurious House at Panipokhari",
        "image": Image.asset(
          "assets/house.jpg",
          fit: BoxFit.cover,
        )
      },
      {
        "text": "37 minutes ago",
        "text1": "Elegant Living: Luxurious House at Panipokhari",
        "image": Image.asset(
          "assets/house.jpg",
          fit: BoxFit.cover,
        )
      },
      {
        "text": "37 minutes ago",
        "text1": "Elegant Living: Luxurious House at Panipokhari",
        "image": Image.asset(
          "assets/house.jpg",
          fit: BoxFit.cover,
        )
      },
      {
        "text": "37 minutes ago",
        "text1": "Elegant Living: Luxurious House at Panipokhari",
        "image": Image.asset(
          "assets/house.jpg",
          fit: BoxFit.cover,
        )
      }
    ];
    return Container(
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      width: width * 1.0,
      height: heigth * 0.4,
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.4, mainAxisSpacing: 10),
        itemCount: newproperties.length,
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
            child: Row(
              children: [
                Container(
                    width: width * 0.4,
                    height: heigth * 0.18,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),

                    // Set the height of the image
                    child: ClipRRect(
                      borderRadius: BorderRadiusDirectional.circular(30),
                      child: newproperties[index]['image'],
                    )),
                SizedBox(
                  width: width * 0.09,
                ),
                Container(
                  height: heigth * 0.13,
                  width: width * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(newproperties[index]['text']),
                      Container(
                        height: heigth * 0.1,
                        width: width * 0.4,
                        child: Text(
                          newproperties[index]['text1'],
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                              color: Colors.black),
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
