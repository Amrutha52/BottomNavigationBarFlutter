import 'dart:io';


import 'package:bottomnavigationbarsample/views/bottom_nav/BottomNavScreen.dart';
import 'package:flutter/material.dart';

import 'MyHttpOverrides.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom NavigationBar',
      home: BottomNavScreen(),
    );
  }
}

