import 'package:flutter/material.dart';
import 'package:property_selling/ui/screens/home%20screen/quick%20categories/apartments.dart';
import 'package:property_selling/ui/screens/home%20screen/quick%20categories/house.dart';
import 'package:property_selling/ui/screens/home%20screen/quick%20categories/land.dart';
import 'package:property_selling/ui/screens/home%20screen/quick%20categories/rent.dart';

class QuickCategories extends StatefulWidget {
  const QuickCategories({super.key});
  static Route route() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaaryAnimation) => Container(),
      transitionsBuilder: (context, animation, secondaaryAnimation, child) {
        return child;
      },
    );
  }

  @override
  State<QuickCategories> createState() => _QuickCategoriesState();
}

class _QuickCategoriesState extends State<QuickCategories> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.15,
      width: width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => House()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 20,
                                spreadRadius: 10,
                                color: Colors.yellow.withOpacity(0.3)),
                          ],
                        ),
                        child: Icon(
                          Icons.house_outlined,
                          size: 45,
                          color: const Color.fromARGB(255, 240, 153, 23),
                        ),
                      ),
                    ),
                    Text('House',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Apartments()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 20,
                                spreadRadius: 10,
                                color: Color.fromARGB(255, 103, 110, 155)
                                    .withOpacity(0.3)),
                          ],
                        ),
                        child: Icon(
                          Icons.apartment_outlined,
                          size: 45,
                          color: Color.fromARGB(255, 157, 27, 218),
                        ),
                      ),
                    ),
                    Text('Apartments',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Rent()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 20,
                                spreadRadius: 10,
                                color: Color.fromARGB(255, 59, 188, 197)
                                    .withOpacity(0.3)),
                          ],
                        ),
                        child: Icon(
                          Icons.location_city,
                          size: 45,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Text('Rent', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Land()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 20,
                                spreadRadius: 10,
                                color: Color.fromARGB(255, 219, 87, 26)
                                    .withOpacity(0.3)),
                          ],
                        ),
                        child: Icon(
                          Icons.landscape_outlined,
                          size: 45,
                          color: const Color.fromARGB(255, 255, 113, 77),
                        ),
                      ),
                    ),
                    Text(
                      'Land',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
