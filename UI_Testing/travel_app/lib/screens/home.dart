import 'package:flutter/material.dart';
import 'package:travel_app/modules/constants.dart';
import 'package:travel_app/screens/NavPages/NavPage.dart';
import 'package:travel_app/screens/NavPages/camera.dart';
import 'package:travel_app/screens/NavPages/profile.dart';
import 'package:travel_app/screens/NavPages/search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var selectedIndex = 0;

  List children = [
    DashBoardPage(),
    Search(),
    Camera(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[selectedIndex],
      backgroundColor: Color(0xFF202020),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: Color(0xFF1B1B1B),
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey[600],
        iconSize: 27.0,
        unselectedLabelStyle: TextStyle(
          color: Colors.green,
        ),
        onTap: (currIndex){
          setState((){
            selectedIndex = currIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Color(0xFF1B1B1B),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink
              ),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            backgroundColor: Color(0xFF1B1B1B),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink
              ),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_camera),
            backgroundColor: Color(0xFF1B1B1B),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink
              ),
            )
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            backgroundColor: Color(0xFF1B1B1B),
            title: Container(
              height: 5.0,
              width: 5.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink
              ),
            )
          )
        ],
      ),
    );
  }
}