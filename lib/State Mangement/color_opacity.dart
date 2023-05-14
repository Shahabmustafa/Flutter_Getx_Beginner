import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_begginer/State%20Mangement/color_opacity_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({Key? key}) : super(key: key);

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {

  final ExampleTwoController controller = Get.put(ExampleTwoController());

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Opascity'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx((){
            return Center(
              child: Container(
                color: Colors.red.withOpacity(controller.opasity.value),
                height: 250.0,
                width: 250.0,
              ),
            );
          }),
          Obx((){
            return Slider(
              value: controller.opasity.value,
              onChanged: (value){
                controller.setOpasity(value);
              },
            );
          }),
        ],
      ),
    );
  }
}
