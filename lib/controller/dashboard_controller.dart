import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rishtey/http/interceptors.dart';

import '../models/dashboard_profile_model.dart';
import '../utils/shared_pref.dart';
class DashBoardController extends ChangeNotifier {
  DashBoardProfilesModel?dashBoardProfilesModel;
  bool isLoading = false;

  getDashBoardProfiles(context, gender) async {
    isLoading = true;
    notifyListeners();
    var user_id = await SharedPref().getString(key: "user_id");
    var data = {
      "gender": "Male",
      "user_id": user_id
    };
    print(data);

    Response res = await HttpService().postRequest(
        endPoint: "profile/recent_profiles", data: data,context: context);
    dashBoardProfilesModel = DashBoardProfilesModel.fromJson(res.data);
    print("dashBoardProfilesModel!.user!.length");
    print(dashBoardProfilesModel!.user!.length);
    isLoading = false;
    notifyListeners();
    return dashBoardProfilesModel;
  }
}