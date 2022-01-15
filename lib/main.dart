import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lecture14_code/homeScreen/home_screen.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      initialRoute: '/',
      builder: EasyLoading.init(),
    );
  }
}




