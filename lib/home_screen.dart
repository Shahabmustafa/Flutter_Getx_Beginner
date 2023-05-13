import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_begginer/second_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
           child: ListTile(
             title: Text('What is Your Name'),
             subtitle: Text('What is you age'),
             onTap: (){
               Get.defaultDialog(
                 title: 'Shahab Mustafa',
                 middleText: '19 Year',
                 // textConfirm: 'yes',
                 // textCancel: 'No'
                 confirm: TextButton(onPressed: (){
                   Get.back();
                 }, child: Text('Yes')),
                 cancel: TextButton(onPressed: (){

                 }, child: Text('NO'))
               );
             },
           ),
         ),
          Card(
            child: ListTile(
              title: const Text('What is Your Name'),
              subtitle: const Text('What is you age'),
              onTap: (){
                Get.bottomSheet(
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.red,
                        child: Column(
                          children: [
                            ListTile(
                              title: const Text('Light Theme'),
                              leading: const Icon(Icons.light_mode),
                              onTap: (){
                                Get.changeTheme(ThemeData.light());
                              },
                            ),
                            ListTile(
                              title: const Text('Dark Theme'),
                              leading: const Icon(Icons.dark_mode),
                              onTap: (){
                                Get.changeTheme(ThemeData.dark());
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: (){
                  Get.to(SecondPage());
                },
                child: const Text('Go to Second Page'),
              ),
            ],
          ),
          Container(
            width: Get.width * 0.3,
            height: Get.height * 0.2,
            color: Colors.red,
            child: Center(child: Text('Media Query Getx',style: TextStyle(color: Colors.white),)),
          ),
          ListTile(
            title: Text('Name'.tr),
            subtitle: Text('Occupation'.tr),
          ),
          Row(
            children: [
             OutlinedButton(
                 onPressed: (){
                   Get.updateLocale(Locale('en_US'));
                   },
                 child: Text('English')),
              OutlinedButton(
                  onPressed: (){
                    Get.updateLocale(Locale('ur_PK'));
                  },
                  child: Text('Urdu')),

            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar(
          'Hello','I am Shahab',
          backgroundColor: Colors.blue,
          icon: Icon(Icons.error)
        );
      }),
    );
  }
}
