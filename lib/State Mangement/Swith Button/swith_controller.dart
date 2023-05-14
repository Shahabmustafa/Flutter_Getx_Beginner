import 'package:get/get.dart';

class SwithController extends GetxController{
  RxBool notification = false.obs;

  setNotification(bool value){
    print(notification.value);
    notification.value = value;
  }
}