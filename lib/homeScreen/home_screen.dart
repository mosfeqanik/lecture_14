import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen_controller.dart';

class HomeScreen extends StatelessWidget {



  final HomeScreenController _controller=Get.put(HomeScreenController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Rest Api Flutter'),
      ),

      body: Container(
        // child: const Center(child: CircularProgressIndicator()),
        child: Obx(()=>ListView.builder(
          itemCount: _controller.myPostList.length??0,
          itemBuilder: (context, index) => ListTile(
            title: Text(_controller.myPostList[index].title??''),
          ),


        ) ),
      ),
    );
  }
}



