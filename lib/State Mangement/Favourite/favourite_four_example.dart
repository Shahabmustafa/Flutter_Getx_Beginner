import 'package:flutter/material.dart';
import 'package:flutter_getx_begginer/State%20Mangement/Favourite/add_favourite.dart';
import 'package:flutter_getx_begginer/State%20Mangement/Favourite/favourite_controller.dart';
import 'package:get/get.dart';


class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {

  final FavouriteController controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite App'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.furitList.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              onTap: (){
                if(controller.tempFuritList.contains(controller.furitList[index].toString())){
                  controller.removeFromFavourite(controller.furitList[index].toString());
                }else{
                  controller.addToFavourite(controller.furitList[index].toString());
                }
              },
              title: Text(controller.furitList[index].toString()),
              trailing: Obx((){
                return Icon(controller.tempFuritList.contains(controller.furitList[index].toString()) ? Icons.favorite : Icons.favorite_outline_outlined,
                  color: controller.tempFuritList.contains(controller.furitList[index].toString()) ? Colors.red : Colors.black,);
              }),
            ),
          );
          },
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            Get.to(AddFavourite());
          }, label: Text('Favourite')
      ),
    );
  }
}
