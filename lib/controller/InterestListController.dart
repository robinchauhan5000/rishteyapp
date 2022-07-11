import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rishtey/models/InterestModel.dart';

import '../http/interceptors.dart';
import '../utils/endpoints.dart';
import '../utils/shared_pref.dart';

class InterestListController extends ChangeNotifier {
  bool isLoading = false;
  InterestListModel? interestListModel;

  Future<dynamic> sentInvitationList(context) async {
    isLoading = true;
    notifyListeners();
    var user_id = await SharedPref().getString(key: "user_id");
    var data = FormData.fromMap({
      "user_id": user_id,
    });

    try {
      Response response = await HttpService().postRequest(
          endPoint: Endpoints.sentInvitation, context: context, data: data);

      print("response.statusCode");
      print(response.statusCode);
      if (response.statusCode == 200) {
        isLoading = false;

        interestListModel = InterestListModel.fromJson(response.data);
        print("fdfdfdfdfd");

        notifyListeners();
        return interestListModel!;
      } else {
        print("response.data");
        print(response.data);
        interestListModel = InterestListModel();
        interestListModel!.user = [];
        isLoading = false;
        notifyListeners();
        return response.data;
      }
    } catch (e) {
      print("e.toString()");
      print(e.toString());
      interestListModel = InterestListModel();
      interestListModel!.user = [];
      isLoading = false;
      notifyListeners();
    }
  }

  Future<dynamic> recievedInvitationList(context) async {
    isLoading = true;
    notifyListeners();
    var user_id = await SharedPref().getString(key: "user_id");
    var data = FormData.fromMap({
      "user_id": user_id,
    });

    try {
      Response response = await HttpService().postRequest(
          endPoint:
              "https://webtechworlds.com/himrishtey/apis/profile/received_interest",
          context: context,
          data: data);

      print("response.statusCode");
      print(response.statusCode);
      if (response.statusCode == 200) {
        isLoading = false;

        interestListModel = InterestListModel.fromJson(response.data);
        print("fdfdfdfdfd");
        print(interestListModel!.user!.length);
        notifyListeners();
        return interestListModel!;
      } else {
        print("response.data");
        print(response.data);
        interestListModel = InterestListModel();
        interestListModel!.user = [];
        isLoading = false;
        notifyListeners();
        return response.data;
      }
    } catch (e) {
      print("e.toString()");
      print(e.toString());
      interestListModel = InterestListModel();
      interestListModel!.user = [];
      isLoading = false;
      notifyListeners();
    }
  }

  Future<dynamic> acceptedInvitationList(context) async {
    isLoading = true;
    notifyListeners();
    var user_id = await SharedPref().getString(key: "user_id");
    var data = FormData.fromMap({
      "user_id": user_id,
    });

    try {
      Response response = await HttpService().postRequest(
          endPoint:
              "https://webtechworlds.com/himrishtey/apis/profile/accepted_interests",
          context: context,
          data: data);

      print("response.statusCode");
      print(response.statusCode);
      if (response.statusCode == 200) {
        isLoading = false;

        interestListModel = InterestListModel.fromJson(response.data);
        print("fdfdfdfdfd");

        notifyListeners();
        return interestListModel!;
      } else {
        print("response.data");
        print(response.data);
        interestListModel = InterestListModel();
        interestListModel!.user = [];
        isLoading = false;
        notifyListeners();
        return response.data;
      }
    } catch (e) {
      print("e.toString()");
      print(e.toString());
      interestListModel = InterestListModel();
      interestListModel!.user = [];
      isLoading = false;
      notifyListeners();
    }
  }

  Future<dynamic> rejectedInvitationList(context) async {
    isLoading = true;
    notifyListeners();
    var user_id = await SharedPref().getString(key: "user_id");
    var data = FormData.fromMap({
      "user_id": user_id,
    });

    try {
      Response response = await HttpService().postRequest(
          endPoint:
              "https://webtechworlds.com/himrishtey/apis/profile/rejected_interest",
          context: context,
          data: data);

      print("response.statusCode");
      print(response.statusCode);
      if (response.statusCode == 200) {
        isLoading = false;

        interestListModel = InterestListModel.fromJson(response.data);
        print("fdfdfdfdfd");

        notifyListeners();
        return interestListModel!;
      } else {
        print("response.data");
        print(response.data);
        interestListModel = InterestListModel();
        interestListModel!.user = [];
        isLoading = false;
        notifyListeners();
        return response.data;
      }
    } catch (e) {
      print("e.toString()");
      print(e.toString());
      interestListModel = InterestListModel();
      interestListModel!.user = [];
      isLoading = false;
      notifyListeners();
    }
  }

  Future<dynamic> pendingInvitationList(context) async {
    isLoading = true;
    notifyListeners();
    var user_id = await SharedPref().getString(key: "user_id");
    var data = FormData.fromMap({
      "user_id": user_id,
    });

    try {
      Response response = await HttpService().postRequest(
          endPoint:
              "https://webtechworlds.com/himrishtey/apis/profile/pending_interest",
          context: context,
          data: data);

      print("response.statusCode");
      print(response.statusCode);
      if (response.statusCode == 200) {
        isLoading = false;

        interestListModel = InterestListModel.fromJson(response.data);
        print("fdfdfdfdfd");

        notifyListeners();
        return interestListModel!;
      } else {
        print("response.data");
        print(response.data);
        interestListModel = InterestListModel();
        interestListModel!.user = [];
        isLoading = false;
        notifyListeners();
        return response.data;
      }
    } catch (e) {
      print("e.toString()");
      print(e.toString());
      interestListModel = InterestListModel();
      interestListModel!.user = [];
      isLoading = false;
      notifyListeners();
    }
  }
}
