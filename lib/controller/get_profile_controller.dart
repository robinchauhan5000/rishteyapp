import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rishtey/models/get_profile_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../http/interceptors.dart';
import '../utils/shared_pref.dart';

class GetProfileController extends ChangeNotifier{
  GetProfileModel? getProfileModel;
  Data? getProfileData;
  bool isLoading=false;
  Future<GetProfileModel>getProfile(context) async {
    isLoading = true;
    notifyListeners();
  var id=await  SharedPref().getString(key: "user_id" );
    try{
      Response res = await HttpService().getRequest(
          endPoint: "profile/user/$id",

          context: context);
      getProfileModel=GetProfileModel.fromJson(res.data);
      print("getProfileModel");

      isLoading = false;

      notifyListeners();
     // return getProfileData;
    }
    catch(e){
      print("jndsdxl$e");
      isLoading = false;

      notifyListeners();
    }
    return getProfileModel!;
}}