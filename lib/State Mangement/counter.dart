import 'package:flutter/material.dart';
import 'package:flutter_getx_begginer/State%20Mangement/counter_controller.dart';
import 'package:get/get.dart';


class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      body: Obx((){
        return Center(
            child: Text(
              '${controller.counter.toString()}',
              style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold),
            ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.incrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
