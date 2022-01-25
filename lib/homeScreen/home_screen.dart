import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen_controller.dart';

class HomeScreen extends StatelessWidget {



  final HomeScreenController _controller=Get.put(HomeScreenController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Obx(()=>Text(_controller.gravityData.value.message??'')),
      ),

      body: Container(
        // child: const Center(child: CircularProgressIndicator()),
        child: Obx(()=>ListView.builder(
          itemCount: _controller.gravityData.value.data?.length??0,
          itemBuilder: (context, index) => ListTile(

            leading: Image.network(
              'https://avatars.githubusercontent.com/u/36180689?v=4',
              width: 100,
              height: 100,
              fit: BoxFit.cover,

            ),

            // title: Text(_controller.myDataListObserable[index].categoryName??''),
            title: Text(_controller.gravityData.value.data?[index].categoryName??''),
          ),


        ) ),
      ),
    );
  }
}



