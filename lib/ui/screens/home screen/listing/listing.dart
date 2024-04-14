import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:property_selling/ui/screens/home%20screen/searchbar/searcbar.dart';
import 'package:property_selling/ui/screens/saved/Displaypage.dart';

class Listing extends StatefulWidget {
  const Listing({Key? key}) : super(key: key);

  @override
  State<Listing> createState() => _ListingState();
}

class _ListingState extends State<Listing> {
  final List<Map<String, dynamic>> imageList = [
    {
      "id": 1,
      "image_path": 'assets/house.jpg',
      "text": "2bhk House At Downtown",
      "text2": "Rs 1,40,40,400",
      "text3": "dhapakhel Lalitpur",
      "bed": "2",
      "kitchen": "1",
      "bath": "2"
    },
    {
      "id": 2,
      "image_path": 'assets/house1.jpg',
      "text": "2bhk House At Downtown",
      "text2": "Rs 1,40,40,400",
      "text3": "dhapakhel Lalitpur",
      "bed": "2",
      "kitchen": "1",
      "bath": "2"
    },
    {
      "id": 3,
      "image_path": 'assets/house.jpg',
      "text": "2bhk House At Downtown",
      "text2": "Rs 1,40,40,400",
      "text3": "dhapakhel Lalitpur",
      "bed": "2",
      "kitchen": "1",
      "bath": "2"
    },
    {
      "id": 4,
      "image_path": 'assets/house.jpg',
      "text": "2bhk House At Downtown",
      "text2": "Rs 1,40,40,400",
      "text3": "dhapakhel Lalitpur",
      "bed": "2",
      "kitchen": "1",
      "bath": "2"
    },
    {
      "id": 5,
      "image_path": 'assets/house.jpg',
      "text": "2bhk House At Downtown",
      "text2": "Rs 1,40,40,400",
      "text3": "dhapakhel Lalitpur",
      "bed": "2",
      "kitchen": "1",
      "bath": "2"
    },
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchPart(),
              SizedBox(
                height: heigth * 0.02,
              ),
              Text(
                'property listing',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: heigth * 0.02,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: imageList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    DisplayPage(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return child;
                            },
                          ),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: width * 0.9,
                                height: heigth * 0.3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  child: CarouselSlider(
                                    items: [imageList[index]]
                                        .map((item) => Image.asset(
                                              item['image_path'],
                                              fit: BoxFit.contain,
                                              width: double.infinity,
                                            ))
                                        .toList(),
                                    carouselController: carouselController,
                                    options: CarouselOptions(
                                      scrollPhysics: BouncingScrollPhysics(),
                                      autoPlay: true,
                                      aspectRatio: 1.2,
                                      viewportFraction: 2,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          currentIndex = index;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 40,
                                left: 0,
                                right: 0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: imageList
                                      .asMap()
                                      .entries
                                      .map(
                                        (entry) => GestureDetector(
                                          onTap: () => carouselController
                                              .animateToPage(entry.key),
                                          child: Container(
                                            width: currentIndex == entry.key
                                                ? 11
                                                : 11,
                                            height: 10,
                                            margin: EdgeInsets.symmetric(
                                              horizontal: 4.0,
                                            ),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                30,
                                              ),
                                              color: currentIndex == entry.key
                                                  ? Color.fromARGB(
                                                      197, 78, 245, 245)
                                                  : Color.fromARGB(
                                                      95, 238, 241, 243),
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 10,
                                child: Container(
                                  alignment: Alignment.center,
                                  height: heigth * 0.04,
                                  width: width * 0.2,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    'For Sale',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  imageList[index]['text'],
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  imageList[index]['text2'],
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.location_on, size: 16),
                                    SizedBox(width: 4),
                                    Text(
                                      imageList[index]['text3'],
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: heigth * 0.01,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.bed),
                                    Text(
                                      imageList[index]['bed'],
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    Icon(Icons.kitchen),
                                    Text(
                                      imageList[index]['kitchen'],
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                    Icon(Icons.bathtub),
                                    Text(
                                      imageList[index]['bath'],
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
