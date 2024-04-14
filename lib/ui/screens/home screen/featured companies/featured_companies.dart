import 'package:flutter/material.dart';

class FeaturedCompanies extends StatefulWidget {
  const FeaturedCompanies({super.key});

  @override
  State<FeaturedCompanies> createState() => _FeaturedCompaniesState();
}

class _FeaturedCompaniesState extends State<FeaturedCompanies> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    final List<Map<String, dynamic>> propertiesList = [
      {
        "text": "Softech",
        "image": Image.asset(
          'assets/house1.jpg',
          fit: BoxFit.fill,
        )
      },
      {
        "text": "Softech",
        "image": Image.asset(
          'assets/house1.jpg',
          fit: BoxFit.fill,
        )
      },
      {
        "text": "Softech",
        "image": Image.asset(
          'assets/house1.jpg',
          fit: BoxFit.fill,
        )
      },
      {
        "text": "Softech",
        "image": Image.asset(
          'assets/house1.jpg',
          fit: BoxFit.fill,
        )
      },
    ];
    return Container(
      padding: const EdgeInsets.only(left: 10),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(20),
      // ),
      width: width * 1,
      height: heigth * 0.27,
      child: GridView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 1.1, mainAxisSpacing: 10.0),
        itemCount: propertiesList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                child: Container(
                  width: width * 0.4,
                  height: heigth * 0.2, // Set the height of the image
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
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
