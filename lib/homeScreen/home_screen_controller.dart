
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:lecture14_code/homeScreen/model/post_model.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'model/infotech/data.dart';
import 'model/infotech/gravity_info_model_data.dart';
import 'package:http/http.dart' as http;


class HomeScreenController extends GetxController{


  var token='eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjIwMDE3OTAyMDUsImlhdCI6MTY0MTc5MDIwNSwiaXNzIjoiZXNob3AifQ.pMhVWFe_ql39Pdt4jh0D3v-_cQsO0XgqDUVlUSwEb6E';

  // var myPostList=<PostModel>[].obs;
  //
  // var myDataListObserable=<Data>[].obs;

  var editController=TextEditingController();

  RxObjectMixin<GravityInfoModelData> gravityData=GravityInfoModelData().obs;





  @override
  void onInit() {

    _getDataWithQueryParam();
    // _randomUserData();

    // _getJsonHolderData();
    // _getGravityInfoTechData();
    super.onInit();
  }




  void _getDataWithQueryParam() async{
    var connectivityResult = await (Connectivity().checkConnectivity());
    Dio _dio=Dio();
    var myUrl='https://vendor.eshopweb.store/app/v1/api/get_categories';


    var bodyParameterData={
      'has_child_or_item':false,
    };

    var headerParameterData={
      'Authorization':'Bearer $token',
      // "Accept": "application/json",
      // "Content-Type": "application/x-www-form-urlencoded"

    };


    try{

      if(connectivityResult ==ConnectivityResult.none){
        print('No Internet Connection');
        Get.snackbar('Ops!', 'No Internet Connection');

      }else{

        EasyLoading.show();

        print('HTTP Request:Start');


        // var response1 = await http.post(Uri.parse(myUrl), body: {
        //   'has_child_or_item':'false',
        // },
        //     headers: {
        //       'Authorization':'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjIwMDE3OTAyMDUsImlhdCI6MTY0MTc5MDIwNSwiaXNzIjoiZXNob3AifQ.pMhVWFe_ql39Pdt4jh0D3v-_cQsO0XgqDUVlUSwEb6E',
        //       // "Accept": "application/json",
        //       // "Content-Type": "application/x-www-form-urlencoded"
        //
        //     });

        var response= await _dio.post(myUrl, queryParameters:bodyParameterData, options: Options(
          headers: headerParameterData,
        ));





        print('HTTP Request: Dio $myUrl');
        print('HTTP Request: HTTP ${response.statusCode}');
        // print('HTTP Request: Status Code ${response.statusCode}');

        if(response.statusCode==200){
          EasyLoading.dismiss();

          var data=response.data;
          var message=data['message'];
          print('HTTP Request: dsfsdf $message');



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


  void _randomUserData() async{
    var connectivityResult = await (Connectivity().checkConnectivity());
    Dio _dio=Dio();
    var myUrl='https://randomuser.me/api/?results=1';


    try{

      if(connectivityResult ==ConnectivityResult.none){
        print('No Internet Connection');
        Get.snackbar('Ops!', 'No Internet Connection');

      }else{

        EasyLoading.show();

        var response1= await _dio.get(myUrl);



        print('HTTP Request: URL $myUrl');
        print('HTTP Request: Status Code ${response1.statusCode}');

        if(response1.statusCode==200){
          EasyLoading.dismiss();

    //       {
    //         "results": [
    // {
    // "gender": "female",
    // "name": {
    // "title": "Mrs",
    // "first": "Juanita",
    // "last": "Byrd"
    // },
    // "location": {
    // "street": {
    // "number": 4203,
    // "name": "Daisy Dr"


    // "name": {
    // "title": "Mr",
    // "first": "Eugenio",
    // "last": "Rubio"
    // },
          var title=response1.data['results'][0]['name']['title'];
          var firstName=response1.data['results'][0]['name']['first'];
          var lastName=response1.data['results'][0]['name']['last'];



           print('HTTP Request: Full Name $title $firstName $lastName');

          // var myMessage=response1.data;
          // print('HTTP Request: Data $myMessage');



          // gravityData.value=GravityInfoModelData.fromJson(myMessage);
          //
          // var myMessage2=response1.data['message'] as String;
          // // var myServerStatus=response1.data['status'] as int;
          // var myDataList=response1.data['data'] as List;
          //
          // print('HTTP Request: Message $myMessage');
          // print('HTTP Request: Server Status $myServerStatus');
          // print('HTTP Request: Server DATA List $myDataList');
          //
          // List<Data> _dataData=myDataList.map((e) => Data.fromJson(e)).toList();
          //
          // myDataListObserable.addAll(_dataData);
          //
          // print('HTTP Request: Obsarable List Length ${myDataListObserable.length}');






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



  void _getGravityInfoTechData() async{

    var connectivityResult = await (Connectivity().checkConnectivity());


    Dio _dio=Dio();

    var myUrl='https://gravityinfotech.net/project/food-v6/api/category';


    try{

      if(connectivityResult ==ConnectivityResult.none){
        print('No Internet Connection');
        Get.snackbar('Ops!', 'No Internet Connection');

      }else{

        EasyLoading.show();

        var response1= await _dio.put(myUrl);



        print('HTTP Request: URL $myUrl');
        print('HTTP Request: Status Code ${response1.statusCode}');

        if(response1.statusCode==200){
          EasyLoading.dismiss();

          var myMessage=response1.data;


          gravityData.value=GravityInfoModelData.fromJson(myMessage);

          var myMessage2=response1.data['message'] as String;
          // // var myServerStatus=response1.data['status'] as int;
          // var myDataList=response1.data['data'] as List;
          //
          // print('HTTP Request: Message $myMessage');
          // print('HTTP Request: Server Status $myServerStatus');
          // print('HTTP Request: Server DATA List $myDataList');
          //
          // List<Data> _dataData=myDataList.map((e) => Data.fromJson(e)).toList();
          //
          // myDataListObserable.addAll(_dataData);
          //
          // print('HTTP Request: Obsarable List Length ${myDataListObserable.length}');






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

  // void _getJsonHolderData() async{
  //
  //   var connectivityResult = await (Connectivity().checkConnectivity());
  //   // connectivityResult == ConnectivityResult.mobile
  //
  //   Dio _dio=Dio();
  //   var myUrl='https://jsonplaceholder.typicode.com/posts';
  //   // var myUrl='https://gravityinfotech.net/project/food-v6/api/category';
  //
  //   // var mapParameter={
  //   //   'userId': editController.text,
  //   //   'userName': '110',
  //   //   'userPhone': '110',
  //   //   'userEmail': '110',
  //   // };
  //   //
  //   //
  //   // var header={
  //   //   'userId': '110',
  //   //   'userName': '110',
  //   //   'userPhone': '110',
  //   //   'userEmail': '110',
  //   // };
  //
  //   try{
  //
  //     if(connectivityResult ==ConnectivityResult.none){
  //       print('No Internet Connection');
  //       Get.snackbar('Ops!', 'No Internet Connection');
  //
  //     }else{
  //
  //       EasyLoading.show();
  //       var response1= await _dio.get(myUrl );
  //
  //
  //       // var response2= await _dio.post('path');
  //       // var response3= await _dio.put('path');
  //       // var response4= await _dio.patch('path');
  //       // var response5= await _dio.delete('path');
  //
  //       print('HTTP Request: URL $myUrl');
  //       print('HTTP Request: Status Code ${response1.statusCode}');
  //
  //       if(response1.statusCode==200){
  //         EasyLoading.dismiss();
  //         // var myData=response1.data['data'] as List;
  //
  //
  //         var myData=response1.data as List;
  //         print(myData);
  //
  //
  //
  //         List<PostModel> postList=myData.map((e) => PostModel.fromJson(e)).toList();
  //
  //         var myReceivedList=myData.map((e) => PostModel.fromJson(e)).toList();
  //
  //         print('HTTP Request: Before Insert Data ${myPostList.length} ');
  //         myPostList.addAll(myReceivedList);
  //         print('HTTP Request: after Insert Data ${myPostList.length} ');
  //
  //
  //       }else{
  //         print('Data not found ');
  //       }
  //
  //     }
  //
  //
  //   }catch(e, l){
  //     print(runtimeType);
  //     print(e);
  //     print(l);
  //   }
  // }




/// rest Api

}