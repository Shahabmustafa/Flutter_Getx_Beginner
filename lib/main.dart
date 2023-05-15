import 'package:flutter/material.dart';
import 'package:flutter_getx_begginer/State%20Mangement/Api/login_in.dart';
import 'package:flutter_getx_begginer/State%20Mangement/Color%20Opasity/color_opacity_controller.dart';
import 'package:flutter_getx_begginer/State%20Mangement/Counter/counter.dart';
import 'package:flutter_getx_begginer/State%20Mangement/Image%20Picker/image_pick.dart';
import 'package:flutter_getx_begginer/State%20Mangement/Swith%20Button/example_three.dart';
import 'package:flutter_getx_begginer/State%20Mangement/Favourite/favourite_four_example.dart';
import 'package:flutter_getx_begginer/home_screen.dart';
import 'package:flutter_getx_begginer/languages.dart';
import 'package:flutter_getx_begginer/second_screen.dart';
import 'package:flutter_getx_begginer/third_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:image_picker/image_picker.dart';

import 'State Mangement/Color Opasity/color_opacity.dart';

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
      translations: Languages(),
      locale: const Locale('en_US'),
      fallbackLocale: Locale('en_US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/secondscreen', page: () => SecondPage()),
        GetPage(name: '/thirdscreen', page: () => ThiredScreen()),
      ],
    );
  }
}

