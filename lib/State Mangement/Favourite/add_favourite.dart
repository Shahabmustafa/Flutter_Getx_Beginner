import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'favourite_controller.dart';

class AddFavourite extends StatefulWidget {
  const AddFavourite({Key? key}) : super(key: key);

  @override
  State<AddFavourite> createState() => _AddFavouriteState();
}

class _AddFavouriteState extends State<AddFavourite> {

  final FavouriteController controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Favourite'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.tempFuritList.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              onTap: (){
                if(controller.tempFuritList.contains(controller.tempFuritList[index].toString())){
                  controller.removeFromFavourite(controller.tempFuritList[index].toString());
                }else{
                  controller.addToFavourite(controller.tempFuritList[index].toString());
                }
              },
              title: Text(controller.tempFuritList[index].toString()),
              trailing: Obx((){
                return Icon(controller.tempFuritList.contains(controller.tempFuritList[index].toString()) ? Icons.favorite : Icons.favorite_outline_outlined,
                  color: controller.tempFuritList.contains(controller.tempFuritList[index].toString()) ? Colors.red : Colors.black,);
              }),
            ),
          );
        },
      ),
    );
  }
}
