import 'package:flutter/material.dart';
import 'package:property_selling/ui/screens/home%20screen/home_page.dart';
import 'package:property_selling/ui/screens/home%20screen/listing/listing.dart';
import 'package:property_selling/ui/screens/more/more.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Listing(),
    Text('Favourites Page'),
    More()
    
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
      floatingActionButton: buildFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  BottomAppBar buildBottomNavigationBar() {
    return BottomAppBar(
      height: 55,
      color: Color.fromARGB(255, 55, 148, 160),
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildIconButton(
            Icons.home,
            0,
            iconSize: 30.0,
          ),
          buildIconButton(Icons.filter_list, 1, iconSize: 30.0),
          SizedBox(width: 40), // The dummy child
          buildIconButton(Icons.favorite_border_outlined, 2, iconSize: 30.0),
          buildIconButton(Icons.more_horiz_outlined, 3, iconSize: 30.0),
        ],
      ),
    );
  }

  IconButton buildIconButton(IconData icon, int index,
      {double iconSize = 24.0}) {
    return IconButton(
      icon: Icon(
        icon,
        color: Colors.white,
        size: iconSize,
      ),
      onPressed: () {
        _onItemTapped(index);
      },
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        // Add your FloatingActionButton onPressed function here
      },
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: 30.0,
      ),
      backgroundColor: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}

// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:property_selling/ui/screens/home%20screen/home_page.dart';

// class BottomNav extends StatefulWidget {
//   const BottomNav({super.key});

//   @override
//   State<BottomNav> createState() => _BottomNavState();
// }

// class _BottomNavState extends State<BottomNav> {
//   @override
//   Widget build(BuildContext context) {
//     final bodys = [
//       HomePage(),
//     ];
//     int _page = 0;

//     return Scaffold(
//       bottomNavigationBar: CurvedNavigationBar(
//           animationDuration: Duration(milliseconds: 300),
//           onTap: (index) {
//             setState(() {
//               if (index == 0) {
//                 _page = 0;
//               } else {
//                 Text("Hello");
//               }
//             });
//           },
//           items: [
//             Icon(
//               Icons.home_outlined,
//             ),
//             Icon(
//               Icons.list_alt_outlined,
//             ),
//             Icon(Icons.add),
//             Icon(Icons.favorite_outline),
//             Icon(Icons.more_vert_sharp)
//           ]),
//       body: Center(
//         child: bodys.elementAt(index)[_page],
//       ),
//     );
//   }
// }
