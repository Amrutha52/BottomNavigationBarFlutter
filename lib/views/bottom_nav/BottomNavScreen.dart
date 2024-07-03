import 'package:bottomnavigationbarsample/views/home_screen/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentPageIndex = 0;
  List<Widget> myScreens = [
    Homescreen(),
    Container(color: Colors.green,),
    Container(color: Colors.yellow,),
    Container(color: Colors.blueGrey,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens[currentPageIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.amber.withOpacity(.5),
        onTap: (value){
          print("value" + value.toString());
          setState(() {
            currentPageIndex = value;
            print("currentPageIndex" + currentPageIndex.toString());
          });
        },
        currentIndex: currentPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.local_dining_rounded,), label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.add_alert_rounded,), label: "Alert"),
          BottomNavigationBarItem(icon: Icon(Icons.location_city,), label: "Location"),
        ],
      ),
    );
  }
}
