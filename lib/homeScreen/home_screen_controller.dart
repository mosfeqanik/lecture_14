
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:lecture14_code/homeScreen/model/post_model.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class HomeScreenController extends GetxController{


  var myPostList=<PostModel>[].obs;
  var editController=TextEditingController();

  @override
  void onInit() {
    _getJsonHolderData();
    super.onInit();
  }


  void _getJsonHolderData() async{

    var connectivityResult = await (Connectivity().checkConnectivity());
    // connectivityResult == ConnectivityResult.mobile

    Dio _dio=Dio();
    var myUrl='https://jsonplaceholder.typicode.com/posts';

    var mapParameter={
      'userId': editController.text,
      'userName': '110',
      'userPhone': '110',
      'userEmail': '110',
    };


    var header={
      'userId': '110',
      'userName': '110',
      'userPhone': '110',
      'userEmail': '110',
    };

    try{

      if(connectivityResult ==ConnectivityResult.none){
        print('No Internet Connection');
        Get.snackbar('Ops!', 'No Internet Connection');

      }else{

        EasyLoading.show();
        var response1= await _dio.get(myUrl , queryParameters: mapParameter, options: Options(
          headers: header
        ));


        // var response2= await _dio.post('path');
        // var response3= await _dio.put('path');
        // var response4= await _dio.patch('path');
        // var response5= await _dio.delete('path');

        print('HTTP Request: URL $myUrl');
        print('HTTP Request: Status Code ${response1.statusCode}');

        if(response1.statusCode==200){
          EasyLoading.dismiss();
          var myData=response1.data as List;

          var myReceivedList=myData.map((e) => PostModel.fromJson(e)).toList();

          print('HTTP Request: Before Insert Data ${myPostList.length} ');
          myPostList.addAll(myReceivedList);
          print('HTTP Request: after Insert Data ${myPostList.length} ');


        }else{
          print('Data not found ');
        }

      }


    }catch(e, l){
      print(runtimeType);
      print(e);
      print(l);
    }
  }



}