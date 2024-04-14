import 'package:flutter/material.dart';
import 'package:property_selling/ui/screens/home%20screen/bottom_nav_bar.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: BottomNavigation(),
    );
  }
}
