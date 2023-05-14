import 'package:flutter/material.dart';
import 'package:flutter_getx_begginer/State%20Mangement/Swith%20Button/swith_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ExampleThree extends StatefulWidget {
  const ExampleThree({Key? key}) : super(key: key);

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  bool notification = false;
  final SwithController controller = Get.put(SwithController());
  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Swith Button'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Notification',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
             Obx((){
               return Switch(
                   value: controller.notification.value,
                   onChanged: (value){
                     controller.setNotification(value);
                   });
             }),
            ],
          ),
        ],
      ),
    );
  }
}
