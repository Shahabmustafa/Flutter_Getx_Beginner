import 'package:flutter/material.dart';
import 'package:flutter_getx_begginer/State%20Mangement/Api/login_controller.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(child: Text('Login',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),)),
            SizedBox(
              height: Get.height * 0.05,
            ),
            TextFormField(
              controller: controller.emailController.value,
              decoration: const InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            TextFormField(
              controller: controller.passwordController.value,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: const InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility)
              ),
            ),
            SizedBox(
              height: Get.height * 0.08,
            ),
            Obx((){
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                ),
                  onPressed: (){
                    controller.loginApi();
                  }, child: controller.loading.value ? Center(child: CircularProgressIndicator(color: Colors.white,)) :Text('Login')
              );
            }),
          ],
        ),
      ),
    );
  }
}
