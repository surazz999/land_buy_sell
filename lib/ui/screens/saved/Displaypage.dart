import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DisplayPage extends StatefulWidget {
  const DisplayPage({Key? key}) : super(key: key);

  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
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
      "image_path": 'assets/house.jpg',
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
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: heigth * 1.0,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: heigth * 0.02,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 5,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: heigth * 0.03,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: width * 1.0,
                              height: heigth * 0.4,
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
                                            border:
                                                Border.all(color: Colors.black),
                                            borderRadius: BorderRadius.circular(
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
                              SizedBox(height: heigth * 0.01),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.location_on, size: 16),
                                  SizedBox(width: width * 0.02),
                                  Text(
                                    imageList[index]['text3'],
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: heigth * 0.02,
                              ),
                              Text(
                                imageList[index]['text2'],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 4),
                              SizedBox(
                                height: heigth * 0.01,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
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
                                padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
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
    );
  }
}
