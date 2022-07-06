// To parse this JSON data, do
//
//     final dashBoardProfilesModel = dashBoardProfilesModelFromJson(jsonString);

import 'dart:convert';

DashBoardProfilesModel dashBoardProfilesModelFromJson(String str) => DashBoardProfilesModel.fromJson(json.decode(str));

String dashBoardProfilesModelToJson(DashBoardProfilesModel data) => json.encode(data.toJson());

class DashBoardProfilesModel {
  DashBoardProfilesModel({
   required this.success,
   required this.user,
   required this.message,
  });

  bool success;
  List<User>? user;
  String message;

  factory DashBoardProfilesModel.fromJson(Map<String, dynamic> json) => DashBoardProfilesModel(
    success: json["success"] == null ? null : json["success"],
    user: json["user"] == null ? null : List<User>.from(json["user"].map((x) => User.fromJson(x))),
    message: json["message"] == null ? null : json["message"],
  );

  Map<String, dynamic> toJson() => {
    "success": success == null ? null : success,
    "user": user == null ? null : List<dynamic>.from(user!.map((x) => x.toJson())),
    "message": message == null ? null : message,
  };
}

class User {
  User({
  required this.id,
  required this.registrationDate,
  required this.profileId,
  required this.username,
  required this.profileCreatedFor,
  required this.fullName,
  required this.email,
  required this.mobileNumber,
  required this.alternateNumber,
  required this.whatsappNumber,
  required this.birthDateTime,
  required this.password,
  required this.height,
  required this.weight,
  required this.gender,
  required this.bloodGroup,
  required this.healthInfo,
  required this.birthPlace,
  required this.religion,
  required this.motherTongue,
  required this.cast,
  required this.subCast,
  required this.gotra,
  required this.manglik,
  required this.maritalStatus,
  required this.noOfChild,
  required this.aboutMyEducation,
  required this.education,
  required this.anyOtherQualifications,
  required this.aboutMyCareer,
  required this.employedIn,
  required this.occupation,
  required this.designation,
  required this.organizationName,
  required this.jobLocation,
  required this.annualIncome,
  required this.countryLivingIn,
  required this.stateLivingIn,
  required this.cityLivingIn,
  required this.addressLivingIn,
  required this.familyType,
  required this.familyStatus,
  required this.fatherName,
  required this.fatherOccupation,
  required this.motherName,
  required this.motherOccupation,
  required this.noOfBrothers,
  required this.noOfSisters,
  required this.marriedBrothers,
  required this.marriedSisters,
  required this.familyIncome,
  required this.aboutFamily,
  required this.diet,
  required this.isDrinking,
  required this.isSmoking,
  required this.aboutMe,
  required this.anyDisability,
  required this.lookingFor,
  required this.partnerAgeFrom,
  required this.partnerAgeTo,
  required this.partnerCountry,
  required this.partnerReligion,
  required this.partnerCast,
  required this.partnerHeightFrom,
  required this.partnerHeightTo,
  required this.partnerEducation,
  required this.partnerMothertongue,
  required this.partnerAnnualIncome,
  //required this.horoscopeNeeded,
  required this.referralCode,
  required this.idProof,
  required this.photo,
  required this.photoPassword,
  required this.photoApproved,
  required this.active,
  required this.planId,
  required this.planActivationDate,
  required this.profileCompleted,
  required this.promoted,
  required this.remarks,
  });

  int id;
  DateTime ?registrationDate;
  String profileId;
  String username;
  String profileCreatedFor;
  String fullName;
  String email;
  dynamic mobileNumber;
  String alternateNumber;
  dynamic whatsappNumber;
  DateTime ?birthDateTime;
  String password;
  int height;
  int weight;
  String gender;
  String bloodGroup;
  String healthInfo;
  dynamic birthPlace;
  String religion;
  String motherTongue;
  String cast;
  String subCast;
  String gotra;
  String manglik;
  String maritalStatus;
  int noOfChild;
  String aboutMyEducation;
  var education;
  String anyOtherQualifications;
  String aboutMyCareer;
  String employedIn;
  String occupation;
  String designation;
  String organizationName;
  String jobLocation;
  String annualIncome;
  String countryLivingIn;
  String stateLivingIn;
  String cityLivingIn;
  String addressLivingIn;
  String familyType;
  String familyStatus;
  String fatherName;
  String fatherOccupation;
  String motherName;
  String motherOccupation;
  dynamic noOfBrothers;
  dynamic noOfSisters;
  dynamic marriedBrothers;
  dynamic marriedSisters;
  String familyIncome;
  String aboutFamily;
  String diet;
  String isDrinking;
  String isSmoking;
  String aboutMe;
  String anyDisability;
  String lookingFor;
  int partnerAgeFrom;
  int partnerAgeTo;
  String partnerCountry;
  String partnerReligion;
  String partnerCast;
  int partnerHeightFrom;
  int partnerHeightTo;
  String partnerEducation;
  String partnerMothertongue;
  String partnerAnnualIncome;
  String referralCode;
  String idProof;
  String photo;
  String photoPassword;
  String photoApproved;
  String active;
  int planId;
  DateTime ?planActivationDate;
  int profileCompleted;
  String promoted;
  String remarks;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"] == null ? null : json["id"],
    registrationDate: json["registration_date"] == null ? null : DateTime.parse(json["registration_date"]),
    profileId: json["profile_id"] == null ? null : json["profile_id"],
    username: json["username"] == null ? null : json["username"],
    profileCreatedFor: json["profile_created_for"] == null ? null : json["profile_created_for"],
    fullName: json["full_name"] == null ? null : json["full_name"],
    email: json["email"] == null ? null : json["email"],
    mobileNumber: json["mobile_number"],
    alternateNumber: json["alternate_number"] == null ? null : json["alternate_number"],
    whatsappNumber: json["whatsapp_number"],
    birthDateTime: json["birth_date_time"] == null ? null : DateTime.parse(json["birth_date_time"]),
    password: json["password"] == null ? null : json["password"],
    height: json["height"] == null ? null : json["height"],
    weight: json["weight"] == null ? null : json["weight"],
    gender: json["gender"] == null ? null : json["gender"],
    bloodGroup: json["blood_group"] == null ? null : json["blood_group"],
    healthInfo: json["health_info"] == null ? null : json["health_info"],
    birthPlace: json["birth_place"],
    religion: json["religion"] == null ? null : json["religion"],
    motherTongue: json["mother_tongue"] == null ? null : json["mother_tongue"],
    cast: json["cast"] == null ? null : json["cast"],
    subCast: json["sub_cast"] == null ? null : json["sub_cast"],
    gotra: json["gotra"] == null ? null : json["gotra"],
    manglik: json["manglik"] == null ? null : json["manglik"],
    maritalStatus: json["marital_status"] == null ? null : json["marital_status"],
    noOfChild: json["no_of_child"] == null ? null : json["no_of_child"],
    aboutMyEducation: json["about_my_education"] == null ? null : json["about_my_education"],
    education: json["education"] == null ? null : json["education"],
    anyOtherQualifications: json["any_other_qualifications"] == null ? null : json["any_other_qualifications"],
    aboutMyCareer: json["about_my_career"] == null ? null : json["about_my_career"],
    employedIn: json["employed_in"] == null ? null : json["employed_in"],
    occupation: json["occupation"] == null ? null : json["occupation"],
    designation: json["designation"] == null ? null : json["designation"],
    organizationName: json["organization_name"] == null ? null : json["organization_name"],
    jobLocation: json["job_location"] == null ? null : json["job_location"],
    annualIncome: json["annual_income"] == null ? null : json["annual_income"],
    countryLivingIn: json["country_living_in"] == null ? null : json["country_living_in"],
    stateLivingIn: json["state_living_in"] == null ? null : json["state_living_in"],
    cityLivingIn: json["city_living_in"] == null ? null : json["city_living_in"],
    addressLivingIn: json["address_living_in"] == null ? null : json["address_living_in"],
    familyType: json["family_type"] == null ? null : json["family_type"],
    familyStatus: json["family_status"] == null ? null : json["family_status"],
    fatherName: json["father_name"] == null ? null : json["father_name"],
    fatherOccupation: json["father_occupation"] == null ? null : json["father_occupation"],
    motherName: json["mother_name"] == null ? null : json["mother_name"],
    motherOccupation: json["mother_occupation"] == null ? null : json["mother_occupation"],
    noOfBrothers: json["no_of_brothers"],
    noOfSisters: json["no_of_sisters"],
    marriedBrothers: json["married_brothers"],
    marriedSisters: json["married_sisters"],
    familyIncome: json["family_income"] == null ? null : json["family_income"],
    aboutFamily: json["about_family"] == null ? null : json["about_family"],
    diet: json["diet"] == null ? null : json["diet"],
    isDrinking: json["is_drinking"] == null ? null : json["is_drinking"],
    isSmoking: json["is_smoking"] == null ? null : json["is_smoking"],
    aboutMe: json["about_me"] == null ? null : json["about_me"],
    anyDisability: json["any_disability"] == null ? null : json["any_disability"],
    lookingFor: json["looking_for"] == null ? null : json["looking_for"],
    partnerAgeFrom: json["partner_age_from"] == null ? null : json["partner_age_from"],
    partnerAgeTo: json["partner_age_to"] == null ? null : json["partner_age_to"],
    partnerCountry: json["partner_country"] == null ? null : json["partner_country"],
    partnerReligion: json["partner_religion"] == null ? null : json["partner_religion"],
    partnerCast: json["partner_cast"] == null ? null : json["partner_cast"],
    partnerHeightFrom: json["partner_height_from"] == null ? null : json["partner_height_from"],
    partnerHeightTo: json["partner_height_to"] == null ? null : json["partner_height_to"],
    partnerEducation: json["partner_education"] == null ? null : json["partner_education"],
    partnerMothertongue: json["partner_mothertongue"] == null ? null :json["partner_mothertongue"],
    partnerAnnualIncome: json["partner_annual_income"] == null ? null : json["partner_annual_income"],
    //horoscopeNeeded: json["horoscope_needed"],
    referralCode: json["referral_code"] == null ? null : json["referral_code"],
    idProof: json["id_proof"] == null ? null : json["id_proof"],
    photo: json["photo"] == null ? null : json["photo"],
    photoPassword: json["photo_password"] == null ? null : json["photo_password"],
    photoApproved: json["photo_approved"] == null ? null :json["photo_approved"],
    active: json["active"] == null ? null : json["active"],
    planId: json["plan_id"] == null ? null : json["plan_id"],
    planActivationDate: json["plan_activation_date"] == null ? null : DateTime.parse(json["plan_activation_date"]),
    profileCompleted: json["profile_completed"] == null ? null : json["profile_completed"],
    promoted: json["promoted"] == null ? null :json["promoted"],
    remarks: json["remarks"] == null ? null : json["remarks"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "registration_date": registrationDate == null ? null : registrationDate!.toIso8601String(),
    "profile_id": profileId == null ? null : profileId,
    "username": username == null ? null : username,
    "profile_created_for": profileCreatedFor == null ? null : profileCreatedFor,
    "full_name": fullName == null ? null : fullName,
    "email": email == null ? null : email,
    "mobile_number": mobileNumber,
    "alternate_number": alternateNumber == null ? null : alternateNumber,
    "whatsapp_number": whatsappNumber,
    "birth_date_time": birthDateTime == null ? null : birthDateTime!.toIso8601String(),
    "password": password == null ? null : password,
    "height": height == null ? null : height,
    "weight": weight == null ? null : weight,
    "gender": gender == null ? null : gender,
    "blood_group": bloodGroup == null ? null : bloodGroup,
    "health_info": healthInfo == null ? null : healthInfo,
    "birth_place": birthPlace,
    "religion": religion == null ? null :religion,
    "mother_tongue": motherTongue == null ? null : motherTongue,
    "cast": cast == null ? null : cast,
    "sub_cast": subCast == null ? null : subCast,
    "gotra": gotra == null ? null : gotra,
    "manglik": manglik == null ? null : manglik,
    "marital_status": maritalStatus == null ? null : maritalStatus,
    "no_of_child": noOfChild == null ? null : noOfChild,
    "about_my_education": aboutMyEducation == null ? null : aboutMyEducation,
    "education": education == null ? null : education,
    "any_other_qualifications": anyOtherQualifications == null ? null : anyOtherQualifications,
    "about_my_career": aboutMyCareer == null ? null : aboutMyCareer,
    "employed_in": employedIn == null ? null : employedIn,
    "occupation": occupation == null ? null : occupation,
    "designation": designation == null ? null : designation,
    "organization_name": organizationName == null ? null : organizationName,
    "job_location": jobLocation == null ? null : jobLocation,
    "annual_income": annualIncome == null ? null : annualIncome,
    "country_living_in": countryLivingIn == null ? null : countryLivingIn,
    "state_living_in": stateLivingIn == null ? null :stateLivingIn,
    "city_living_in": cityLivingIn == null ? null : cityLivingIn,
    "address_living_in": addressLivingIn == null ? null : addressLivingIn,
    "family_type": familyType == null ? null : familyType,
    "family_status": familyStatus == null ? null : familyStatus,
    "father_name": fatherName == null ? null : fatherName,
    "father_occupation": fatherOccupation == null ? null : fatherOccupation,
    "mother_name": motherName == null ? null : motherName,
    "mother_occupation": motherOccupation == null ? null : motherOccupation,
    "no_of_brothers": noOfBrothers,
    "no_of_sisters": noOfSisters,
    "married_brothers": marriedBrothers,
    "married_sisters": marriedSisters,
    "family_income": familyIncome == null ? null : familyIncome,
    "about_family": aboutFamily == null ? null : aboutFamily,
    "diet": diet == null ? null : diet,
    "is_drinking": isDrinking == null ? null : isDrinking,
    "is_smoking": isSmoking == null ? null : isSmoking,
    "about_me": aboutMe == null ? null : aboutMe,
    "any_disability": anyDisability == null ? null : anyDisability,
    "looking_for": lookingFor == null ? null : lookingFor,
    "partner_age_from": partnerAgeFrom == null ? null : partnerAgeFrom,
    "partner_age_to": partnerAgeTo == null ? null : partnerAgeTo,
    "partner_country": partnerCountry == null ? null : partnerCountry,
    "partner_religion": partnerReligion == null ? null : partnerReligion,
    "partner_cast": partnerCast == null ? null : partnerCast,
    "partner_height_from": partnerHeightFrom == null ? null : partnerHeightFrom,
    "partner_height_to": partnerHeightTo == null ? null : partnerHeightTo,
    "partner_education": partnerEducation == null ? null : partnerEducation,
    "partner_mothertongue": partnerMothertongue == null ? null : partnerMothertongue,
    "partner_annual_income": partnerAnnualIncome == null ? null : partnerAnnualIncome,
    // "horoscope_needed": horoscopeNeeded==null?"":horoscopeNeeded,
    "referral_code": referralCode == null ? null : referralCode,
    "id_proof": idProof == null ? null : idProof,
    "photo": photo == null ? null : photo,
    "photo_password": photoPassword == null ? null : photoPassword,
    "photo_approved": photoApproved == null ? null : photoApproved,
    "active": active == null ? null : active,
    "plan_id": planId == null ? null : planId,
    "plan_activation_date": planActivationDate == null ? null : "${planActivationDate!.year.toString().padLeft(4, '0')}-${planActivationDate!.month.toString().padLeft(2, '0')}-${planActivationDate!.day.toString().padLeft(2, '0')}",
    "profile_completed": profileCompleted == null ? null : profileCompleted,
    "promoted": promoted == null ? null : promoted,
    "remarks": remarks == null ? null : remarks,
  };
}

