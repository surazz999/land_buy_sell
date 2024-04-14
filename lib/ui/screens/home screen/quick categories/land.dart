import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Land extends StatefulWidget {
  const Land({Key? key}) : super(key: key);

  @override
  State<Land> createState() => _LandState();
}

class _LandState extends State<Land> {
  final List<Map<String, dynamic>> imageList = [
    {
      "id": 1,
      "image_path": 'assets/land.jpg',
      "text": "2bhk Apartment At Downtown",
      "text2": "Rs 1,40,40,400",
      "text3": "dhapakhel Lalitpur",
      "bed": "2",
      "kitchen": "1",
      "bath": "2"
    },
    {
      "id": 2,
      "image_path": 'assets/land.jpg',
      "text": "2bhk Apartment At Downtown",
      "text2": "Rs 1,40,40,400",
      "text3": "dhapakhel Lalitpur",
      "bed": "2",
      "kitchen": "1",
      "bath": "2"
    },
    {
      "id": 3,
      "image_path": 'assets/land.jpg',
      "text": "2bhk Apartment At Downtown",
      "text2": "Rs 1,40,40,400",
      "text3": "dhapakhel Lalitpur",
      "bed": "2",
      "kitchen": "1",
      "bath": "2"
    },
    {
      "id": 4,
      "image_path": 'assets/land.jpg',
      "text": "2bhk Apartment At Downtown",
      "text2": "Rs 1,40,40,400",
      "text3": "dhapakhel Lalitpur",
      "bed": "2",
      "kitchen": "1",
      "bath": "2"
    },
    {
      "id": 5,
      "image_path": 'assets/land.jpg',
      "text": "2bhk Apartment At Downtown",
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
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                      ),
                    ),
                    Container(
                      height: heigth * 0.06,
                      width: width * 0.8,
                      child: SearchBar(
                        hintText: 'what  are you looking for?',
                        leading: Icon(
                          Icons.search,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: heigth * 0.02,
                ),
                Text(
                  'Apartments for Sale/Rent',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: heigth * 0.02,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: imageList.length,
                    itemBuilder: (context, index) {
                      return Column(
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
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 40, 0),
                                  child: Divider(
                                    thickness: 2,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        height: heigth * 0.04,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Icon(
                                          Icons.call,
                                          color: Colors.white,
                                        )),
                                    Container(
                                        height: heigth * 0.04,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Icon(
                                          Icons.chat_bubble_outline,
                                          color: Colors.white,
                                        )),
                                    Container(
                                        height: heigth * 0.04,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Icon(
                                          Icons.message,
                                          color: Colors.white,
                                        )),
                                    Container(
                                        height: heigth * 0.04,
                                        width: width * 0.1,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Icon(
                                          Icons.share,
                                          color: Colors.white,
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('updated 34 mins ago'),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
