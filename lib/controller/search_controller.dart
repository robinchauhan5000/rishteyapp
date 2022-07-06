import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:rishtey/utils/endpoints.dart';

import '../http/interceptors.dart';
import '../utils/shared_pref.dart';

class SearchController extends ChangeNotifier {
  bool isLoading = false;
  Future<bool> quickSearch(context, ageFrom, ageTo, religion, cast) async {
    isLoading = true;
    notifyListeners();
    var user_id = await SharedPref().getString(key: "user_id");
    var data = {
      "user_id": user_id,
      "gender": "Male",
      "age_from": ageFrom,
      "age_to": ageTo,
      "cast": cast,
      "religion": religion
    };

    try {
      Response response = await HttpService().postRequest(
          endPoint: Endpoints.quickSearch, context: context, data: data);

      if (response.statusCode == 200) {
        isLoading = false;
        notifyListeners();
        return true;
      } else {
        isLoading = false;
        notifyListeners();
        return false;
      }
    } catch (e) {
      isLoading = false;
      notifyListeners();
      return false;
    }
  }
}
