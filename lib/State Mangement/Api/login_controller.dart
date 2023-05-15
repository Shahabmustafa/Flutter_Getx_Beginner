import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_getx_begginer/second_screen.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController{

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool loading = false.obs;
  
  void loginApi()async{
    loading.value = true;
    try{
      final response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {
            'email' : emailController.value.text,
            'password' : passwordController.value.text,
          });
      var data = jsonDecode(response.body);
      if(response.statusCode == 200){
        Get.snackbar('Login Sucessfully', 'Cong');
        Get.toNamed('/thirdscreen');
        loading.value = false;
      }else{
        Get.snackbar('Error', data['error']);
        loading.value = false;
      }
    }catch(e){
      Get.snackbar('Exception', e.toString());
      loading.value = false;
    }
  }

}