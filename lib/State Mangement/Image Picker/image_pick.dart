import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_getx_begginer/State%20Mangement/Image%20Picker/image_picker_controller.dart';
import 'package:get/get.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({Key? key}) : super(key: key);

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  ImagePickerController controller = ImagePickerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
        centerTitle: true,
      ),
      body: Obx((){
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Center(
              child: CircleAvatar(
                  radius: 50,
                  backgroundImage: controller.imagePath.isNotEmpty ? FileImage(File(controller.imagePath.toString())) : null
              ),
            ),
            Center(
              child: TextButton(
                  onPressed: (){
                    controller.getImage();
                  },
                  child: Text('Pick Image',style: TextStyle(fontSize: 20.0),)
              ),
            ),
          ],
        );
      })
    );
  }
}
