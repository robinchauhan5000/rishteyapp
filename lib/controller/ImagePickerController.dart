import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:rishtey/http/interceptors.dart';
import 'package:rishtey/utils/app_snack_bar.dart';

import '../presentation/dashboard/dash_board_screen.dart';
import '../presentation/profile/onboarding_flow.dart';
import '../utils/shared_pref.dart';


class ImagePickerController extends ChangeNotifier {
  File? images;

  var imagePicker =  ImagePicker();

  Future pickImage(context) async {
    XFile? image = await imagePicker.pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
      preferredCameraDevice: CameraDevice.rear,
    );

    images = File(image!.path);
if(images!.length()!=0){

  print("kjnjodsno");
  sendImageServer(context);
}
    notifyListeners();
  }

  Future pickGallery(context) async {
    XFile? image = await imagePicker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
      preferredCameraDevice: CameraDevice.rear,
    );

    images = File(image!.path);
    if(images!.length()!=0){

      print("kjnjodsno");
      sendImageServer(context);
    }
    notifyListeners();
  }

  sendImageServer(context) async {
    print(images);

    final bytes = images!.readAsBytesSync();
    String base64Image =  base64Encode(bytes);

    var userid;
    userid=await SharedPref().getString(key: "user_id");
    notifyListeners();
    //  request.headers.addAll(headers);

  var data={
    "user_id":userid,
    "profile_completed":50,
    "image":base64Image
  };
    Response response=await HttpService().postRequest(endPoint: "user/add_profile_photo",context: context,data: data);
  print(response.data);
  if(response.statusCode==200||response.statusCode==201){
    appSnackBar(content: response.data['message'], context: context);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingFlow()));
  }
  }
}
