import 'package:get/get.dart';

class FavouriteController extends GetxController{
  RxList<String> furitList = ['Orange','Apple','Banana','Graphs','WaterMillion','Peach','Rambutan','Sapota','Tangerine','Papaya','Lemon'].obs;
  RxList tempFuritList = [].obs;

  addToFavourite(String value){
    tempFuritList.add(value);
    print(value.toString());
  }

  removeFromFavourite(String value){
    tempFuritList.remove(value);
    print(value.toString());
  }
}