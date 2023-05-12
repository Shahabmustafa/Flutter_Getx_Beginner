import 'package:flutter/material.dart';
import 'package:flutter_getx_begginer/home_screen.dart';
import 'package:flutter_getx_begginer/second_screen.dart';
import 'package:flutter_getx_begginer/third_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/secondscreen', page: () => SecondPage()),
        GetPage(name: '/thirdscreen', page: () => ThiredScreen()),
      ],
    );
  }
}

