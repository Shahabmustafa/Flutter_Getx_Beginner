import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ThiredScreen extends StatefulWidget {
  const ThiredScreen({Key? key}) : super(key: key);

  @override
  State<ThiredScreen> createState() => _ThiredScreenState();
}

class _ThiredScreenState extends State<ThiredScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(onPressed: (){
              Get.back();
              Get.back();
            }, child: Text('Go Back')),
          )
        ],
      ),
    );
  }
}
