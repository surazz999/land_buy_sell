import 'package:flutter/material.dart';

class SearchPart extends StatelessWidget {
  const SearchPart({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: height * 0.06,
          width: width * 0.81,
          child: SearchBar(
            hintText: 'what  are you looking for?',
            leading: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 30, 156, 156),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            Icons.list,
            color: Colors.white,
            size: 40,
          ),
        )
      ],
    );
  }
}
