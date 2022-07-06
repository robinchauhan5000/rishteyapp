import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rishtey/http/interceptors.dart';
import 'package:rishtey/models/castes_model.dart';
import 'package:rishtey/models/country_model.dart';
import 'package:rishtey/models/mother_tongue_model.dart';
import 'package:rishtey/models/religion_model.dart';
import 'package:rishtey/utils/app_snack_bar.dart';
import 'package:rishtey/utils/shared_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/AnnualIncomeModel.dart';
import '../models/EducationModel.dart';
import '../models/EmployerModel.dart';
import '../models/OccupationModel.dart';
import '../models/city_model.dart';
import '../models/create_profile_for_model.dart';
import '../models/height_model.dart';
import '../models/login_model.dart';
import '../models/marital_status_model.dart';
import '../models/states_model.dart';

class AuthController extends ChangeNotifier {
  bool isLoading = false;
  LoginModel? loginModel;
  double loginWidth = 350;
  TextEditingController timeinput = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController fullName = TextEditingController();
  TextEditingController dateinput = TextEditingController();
  TextEditingController countryName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController occupation = TextEditingController();
  TextEditingController height = TextEditingController();
  TextEditingController cityLiving = TextEditingController();
  String? cityId ;
  TextEditingController annualIncome = TextEditingController();
  TextEditingController birthPlace = TextEditingController();
  TextEditingController birthTime = TextEditingController();
  TextEditingController employed = TextEditingController();
  TextEditingController religion = TextEditingController();
  TextEditingController maritalStatus = TextEditingController();
  TextEditingController motherTongue = TextEditingController();
  TextEditingController numberOfChild = TextEditingController();
  TextEditingController castes = TextEditingController();
  TextEditingController educationController = TextEditingController();
  TextEditingController annualIcomController = TextEditingController();
  TextEditingController occupationController = TextEditingController();
  TextEditingController employeeTypeController = TextEditingController();
  String dropdownValue = 'Yes';
  String numberChild = '1';
  String haveChild = 'No';
  String isManglik = 'Yes';
  CreateProfileForModel ?createProfileForModel;
  bool select =false;
  int selectIndex=11;
  String genderValue = 'Male';
  CountryModel?countryModel;
  StatesModel?statesModel;
  int ?countryId;
  var stateId;
  CityModel?cityModel;
  EmployerModel? employerModel;
  AnnualIncomeModel? annualIncomeModel;
  EducationModel? educationModel;
  OccupationModel? occupationModel;
  MaritalStatusModel ?maritalStatusModel;
  ReligionModel?religionModel;
  MotherTongueModel ?motherTongueModel;
  HeightModel?heightModel;
  CastesModel ?castesModel;
  signup(context,endPoint) async {
    isLoading = true;
    Map<String,dynamic> data={};
    notifyListeners();

      data = {

        // "fullname": fullName.text,
        // "gender": "Male",
        // "marital_status": email.text,
        // "email": email.text,
        // "password": password.text,
        // "phone_number": phoneNumber.text,
        // "employed_in": employed.text,
        // "occupation": occupation.text,
        // "designation": "annualIncome",
        // "annual_income": annualIncome.text,
        // "date_of_birth": dateinput.text,
        // "time_of_birth": timeinput.text,
        // "birth_place": birthPlace.text,
        // "height": height.text,
        // "city_living_in": cityLiving.text,
        "full_name":fullName.text,
      "profile_created_for":"Brother",
      "email":email.text,
      "phone_number":phoneNumber.text,
      "password":password.text,
      "profile_completed":15,
      "username":username.text,
      "gender":"Male",
      "date_of_birth":dateinput.text,
      "time_of_birth":timeinput.text,
      "height":height.text,
      "country":countryName.text,
      "state":birthPlace.text,
      "city":cityLiving.text,

      "profile_completed":15
    };


    print(data);
try{
  Response res = await HttpService().postRequest(
      endPoint: endPoint,
      data: FormData.fromMap(data),
      context: context);
  print("res.data");

  print(res.data['user']);
  isLoading = false;
  SharedPreferences preferences=await SharedPreferences.getInstance();
  preferences.remove("user_id");
  SharedPref().setString(key: "user_id",value:res.data['user'].toString() );
  notifyListeners();
  return res;
}
catch(e){
  print("jndsdxl$e");
  isLoading = false;
  loginWidth=350;

  notifyListeners();
}

  }
  Future<Response> signup2(context,endPoint) async {
    isLoading = true;
    var user_id;

    user_id=await SharedPref().getString(key: "user_id");
    notifyListeners();
    Map<String,dynamic>  data = {


      "full_name":fullName.text,
      "profile_created_for":"Brother",
      "email":email.text,
      "phone_number":phoneNumber.text,
      "password":password.text,
      "profile_completed":15,
      "username":username.text,
      "gender":genderValue.toString(),
      "date_of_birth":dateinput.text,
      "time_of_birth":timeinput.text,
      "height":height.text,
      "country":countryName.text,
      "state":birthPlace.text,
      "city":cityLiving.text,
      "user_id":user_id,
      "profile_completed":30
    };
    print(":jwojdklmcpid");
    print(data);

    Response res = await HttpService().postRequest(
        endPoint: endPoint,
        data: FormData.fromMap(data),
        context: context);
    print("res.data");

    print(res.data['user']);
    isLoading = false;
    notifyListeners();
    return res;
  }
  Future<Response> signup4(context,endPoint) async {
    isLoading = true;
    Map<String,dynamic> data={};
    var user_id;

    user_id=await SharedPref().getString(key: "user_id");

    notifyListeners();
    data = {

      // "fullname": fullName.text,
      // "gender": "Male",
      // "marital_status": email.text,
      // "email": email.text,
      // "password": password.text,
      // "phone_number": phoneNumber.text,
      // "employed_in": employed.text,
      // "occupation": occupation.text,
      // "designation": "annualIncome",
      // "annual_income": annualIncome.text,
      // "date_of_birth": dateinput.text,
      // "time_of_birth": timeinput.text,
      // "birth_place": birthPlace.text,
      // "height": height.text,
      // "city_living_in": cityLiving.text,
      "cast":castes.text,
      "mother_tongue":motherTongue.text,
      "marital_status":maritalStatus.text,
      "no_of_child":numberChild,
      "religion":religion.text,
      "is_manglik":isManglik,
      "horoscope_needed":dropdownValue,
      "user_id":user_id,
      "profile_completed":35
    };
    print(data);
    print(":jwojdklmcpid");

    Response res = await HttpService().postRequest(
        endPoint: endPoint,
        data: FormData.fromMap(data),
        context: context);
    print("res.data");

    print(res.data['user']);
    isLoading = false;
    notifyListeners();
    return res;
  }
  Future<Response> signup3(context,endPoint) async {
    isLoading = true;
    Map<String,dynamic> data={};
    notifyListeners();
    var user_id;

    user_id=await SharedPref().getString(key: "user_id");

      notifyListeners();
    data = {


      "education":educationController.text,
      "employed_in":employeeTypeController.text,
      "occupation":occupationController.text,
      "annual_income":annualIcomController.text,
      "user_id":user_id,
      "profile_completed":25

    };

    Response res = await HttpService().postRequest(
        endPoint: endPoint,
        data: FormData.fromMap(data),
        context: context);
    print("res.data");

    print(res.data['user']);
    isLoading = false;

    notifyListeners();
    return res;
  }
  Future<Response> login(context, username, password) async {
    isLoading = true;
    notifyListeners();
    var data = {"username": username, "password": password};
    print(data);
    Response response = await HttpService().postRequest(
        endPoint: "user/login", context: context, data: FormData.fromMap(data));

    isLoading = false;
    log(response.data['user']['id'].toString());
    loginModel = LoginModel.fromJson(response.data);
    SharedPref().setString(
        key: "user_id", value: response.data['user']['id'].toString());
    appSnackBar(content: "Login Successfully", context: context);
    notifyListeners();
    return response;
  }
  Future<CreateProfileForModel>createProfileFor(context) async {
    isLoading = true;
    notifyListeners();
    Response response = await HttpService().getRequest(
        endPoint: "user/profile_created_for", context: context, );

    isLoading = false;

    createProfileForModel=CreateProfileForModel.fromJson(response.data);
    notifyListeners();
return createProfileForModel!;
  }
  selectValue(index){
    selectIndex=index;
    select=true;
    notifyListeners();
  }
  Future<CountryModel>getCountries(context) async {

    Response response = await HttpService().getRequest(
      endPoint: "user/countries", context: context, );


    countryModel=CountryModel.fromJson(response.data);
    getHeights(context);
    notifyListeners();
    return countryModel!;
  }
  Future<StatesModel>getStates(context) async {

    Map<String,dynamic> data={
      "country_id":countryId
    };
    print(data);
    Response response = await HttpService().postRequest(

      endPoint: "user/states", context: context,data: FormData.fromMap(data) );



    statesModel=StatesModel.fromJson(response.data);
    // getCities(context);
    notifyListeners();
    return statesModel!;
  }
  Future<HeightModel>getHeights(context) async {



    Response response = await HttpService().getRequest(

        endPoint: "user/heights", context: context );

    isLoading = false;

    heightModel=HeightModel.fromJson(response.data);
    notifyListeners();
    return heightModel!;
  }

  Future<MotherTongueModel>getMotherTongue(context) async {


    Response response = await HttpService().getRequest(

        endPoint: "user/mother_tongues", context: context );

    isLoading = false;

    motherTongueModel=MotherTongueModel.fromJson(response.data);
    getCastes(context);
    notifyListeners();
    return motherTongueModel!;
  }
  Future<MaritalStatusModel>getMaritalStatus(context) async {


    Response response = await HttpService().getRequest(

        endPoint: "user/marital_status", context: context );

    isLoading = false;

    maritalStatusModel=MaritalStatusModel.fromJson(response.data);
    notifyListeners();
    getMotherTongue(context);
    return maritalStatusModel!;
  }
  Future<ReligionModel>getReligion(context) async {



    Response response = await HttpService().getRequest(

        endPoint: "user/religions", context: context );

    isLoading = false;

    religionModel=ReligionModel.fromJson(response.data);
    getMaritalStatus(context);
    notifyListeners();
    return religionModel!;
  }

  Future<CastesModel>getCastes(context) async {



    Response response = await HttpService().getRequest(

        endPoint: "user/casts", context: context );

    isLoading = false;

    castesModel=CastesModel.fromJson(response.data);

    notifyListeners();
    return castesModel!;
  }
  Future<EmployerModel> getEmployeType(context) async {


    Response response = await HttpService()
        .getRequest(endPoint: "user/employer", context: context);

    isLoading = false;

    employerModel = EmployerModel.fromJson(response.data);
    notifyListeners();
    return employerModel!;
  }

  Future<AnnualIncomeModel> getAnnualIncomeType(context) async {


    Response response = await HttpService()
        .getRequest(endPoint: "user/annual_incomes", context: context);

    isLoading = false;

    annualIncomeModel = AnnualIncomeModel.fromJson(response.data);
    notifyListeners();
    return annualIncomeModel!;
  }

  Future<EducationModel> getEducationType(context) async {


    Response response = await HttpService()
        .getRequest(endPoint: "user/educations", context: context);

    isLoading = false;

    educationModel = EducationModel.fromJson(response.data);
    notifyListeners();
    return educationModel!;
  }

  Future<OccupationModel> getOccupationType(context) async {


    Response response = await HttpService()
        .getRequest(endPoint: "user/occupations", context: context);

    isLoading = false;

    occupationModel = OccupationModel.fromJson(response.data);
    notifyListeners();
    return occupationModel!;
  }


  Future<CityModel> getCities(context) async {

var data={"state_id":stateId};
print("=============$data");
    Response response = await HttpService()
        .postRequest(endPoint: "user/cities", context: context,data: FormData.fromMap(data));

    isLoading = false;

    cityModel = CityModel.fromJson(response.data);
    notifyListeners();
    return cityModel!;
  }
  Future<Response>addOccupation(context)async{
    var data={"occ_name":occupationController.text};
    print("=============$data");
    Response response = await HttpService()
        .postRequest(endPoint: "user/add_occupation", context: context,data: FormData.fromMap(data));

    isLoading = false;


    return response;
  }
  Future<Response>addCities(context)async{
    var data={"city_name":cityLiving.text,
    "state_id":stateId};
    print("=============$data");
    Response response = await HttpService()
        .postRequest(endPoint: "user/add_city", context: context,data: FormData.fromMap(data));

    isLoading = false;


    return response;
  }
}
