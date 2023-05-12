import 'package:flutter/material.dart';
import 'package:flutter_getx_begginer/third_screen.dart';
import 'package:get/get.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: TextButton(onPressed: (){
            // Get.to(ThiredScreen());
            Get.toNamed('/thirdscreen');
          }, child: Text('Go to Third Screen')))
        ],
      ),
    );
  }
}
