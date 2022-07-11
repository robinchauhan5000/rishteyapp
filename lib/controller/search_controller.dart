import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rishtey/utils/endpoints.dart';

import '../http/interceptors.dart';
import '../models/searched_profiles.dart';
import '../presentation/all_search/search_results.dart';
import '../utils/shared_pref.dart';

class SearchController extends ChangeNotifier {
  SearchedProfiles? searchedProfiles;
  bool isLoading = false;
  Future<bool> quickSearch(context, ageFrom, ageTo, religion, cast) async {
    isLoading = true;
    notifyListeners();
    var user_id = await SharedPref().getString(key: "user_id");
    var data = {
      "user_id": user_id.toString(),
      "gender": "Female",
      "age_from": ageFrom.toString(),
      "age_to": ageTo.toString(),
      "cast": cast.toString(),
      "religion": religion.toString()
    };
    try {
      Response response = await HttpService().postRequest(
          endPoint: Endpoints.quickSearch,
          context: context,
          data: FormData.fromMap(data));

      if (response.statusCode == 200) {
        isLoading = false;

        searchedProfiles = SearchedProfiles.fromJson(response.data);
        notifyListeners();
        print(searchedProfiles!.user);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SearchResult()));
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
