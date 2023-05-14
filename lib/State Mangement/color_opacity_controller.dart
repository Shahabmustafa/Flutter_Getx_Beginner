import 'package:get/get.dart';

class ExampleTwoController extends GetxController{
  RxDouble opasity = .8.obs;

  setOpasity(double value){
    opasity.value = value;
  }
}