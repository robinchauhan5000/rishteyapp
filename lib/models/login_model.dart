class LoginModel {
  bool? success;
  User? user;

  LoginModel({this.success, this.user});

  LoginModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  int? id;
  String? registrationDate;
  String? profileId;
  String? username;
  String? profileCreatedFor;
  String? fullName;
  String? email;
  int? mobileNumber;
  String? alternateNumber;
  String? whatsappNumber;
  String? birthDateTime;
  String? password;
  int? height;
  int? weight;
  String? gender;
  String? bloodGroup;
  String? healthInfo;
  String? birthPlace;
  String? religion;
  String? motherTongue;
  String? cast;
  String? subCast;
  String? gotra;
  String? manglik;
  String? maritalStatus;
  Null? noOfChild;
  String? aboutMyEducation;
  String? education;
  String? anyOtherQualifications;
  String? aboutMyCareer;
  String? employedIn;
  String? occupation;
  String? designation;
  String? organizationName;
  String? jobLocation;
  String? annualIncome;
  String? countryLivingIn;
  String? stateLivingIn;
  String? cityLivingIn;
  String? addressLivingIn;
  String? familyType;
  String? familyStatus;
  String? fatherName;
  String? fatherOccupation;
  String? motherName;
  String? motherOccupation;
  String? noOfBrothers;
  String? noOfSisters;
  String? marriedBrothers;
  String? marriedSisters;
  String? familyIncome;
  String? aboutFamily;
  String? diet;
  String? isDrinking;
  String? isSmoking;
  String? aboutMe;
  String? anyDisability;
  String? lookingFor;
  int? partnerAgeFrom;
  int? partnerAgeTo;
  String? partnerCountry;
  String? partnerReligion;
  String? partnerCast;
  int? partnerHeightFrom;
  int? partnerHeightTo;
  String? partnerEducation;
  String? partnerMothertongue;
  String? partnerAnnualIncome;
  String? horoscopeNeeded;
  String? referralCode;
  String? idProof;
  String? photo;
  String? photoPassword;
  String? photoApproved;
  String? active;
  String? activation;
  String? memberType;
  int? planId;
  String? planActivationDate;
  int? profileCompleted;
  String? promoted;
  String? remarks;

  User(
      {this.id,
      this.registrationDate,
      this.profileId,
      this.username,
      this.profileCreatedFor,
      this.fullName,
      this.email,
      this.mobileNumber,
      this.alternateNumber,
      this.whatsappNumber,
      this.birthDateTime,
      this.password,
      this.height,
      this.weight,
      this.gender,
      this.bloodGroup,
      this.healthInfo,
      this.birthPlace,
      this.religion,
      this.motherTongue,
      this.cast,
      this.subCast,
      this.gotra,
      this.manglik,
      this.maritalStatus,
      this.noOfChild,
      this.aboutMyEducation,
      this.education,
      this.anyOtherQualifications,
      this.aboutMyCareer,
      this.employedIn,
      this.occupation,
      this.designation,
      this.organizationName,
      this.jobLocation,
      this.annualIncome,
      this.countryLivingIn,
      this.stateLivingIn,
      this.cityLivingIn,
      this.addressLivingIn,
      this.familyType,
      this.familyStatus,
      this.fatherName,
      this.fatherOccupation,
      this.motherName,
      this.motherOccupation,
      this.noOfBrothers,
      this.noOfSisters,
      this.marriedBrothers,
      this.marriedSisters,
      this.familyIncome,
      this.aboutFamily,
      this.diet,
      this.isDrinking,
      this.isSmoking,
      this.aboutMe,
      this.anyDisability,
      this.lookingFor,
      this.partnerAgeFrom,
      this.partnerAgeTo,
      this.partnerCountry,
      this.partnerReligion,
      this.partnerCast,
      this.partnerHeightFrom,
      this.partnerHeightTo,
      this.partnerEducation,
      this.partnerMothertongue,
      this.partnerAnnualIncome,
      this.horoscopeNeeded,
      this.referralCode,
      this.idProof,
      this.photo,
      this.photoPassword,
      this.photoApproved,
      this.active,
      this.activation,
      this.memberType,
      this.planId,
      this.planActivationDate,
      this.profileCompleted,
      this.promoted,
      this.remarks});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    registrationDate = json['registration_date'];
    profileId = json['profile_id'];
    username = json['username'];
    profileCreatedFor = json['profile_created_for'];
    fullName = json['full_name'];
    email = json['email'];
    mobileNumber = json['mobile_number'];
    alternateNumber = json['alternate_number'];
    whatsappNumber = json['whatsapp_number'];
    birthDateTime = json['birth_date_time'];
    password = json['password'];
    height = json['height'];
    weight = json['weight'];
    gender = json['gender'];
    bloodGroup = json['blood_group'];
    healthInfo = json['health_info'];
    birthPlace = json['birth_place'];
    religion = json['religion'];
    motherTongue = json['mother_tongue'];
    cast = json['cast'];
    subCast = json['sub_cast'];
    gotra = json['gotra'];
    manglik = json['manglik'];
    maritalStatus = json['marital_status'];
    noOfChild = json['no_of_child'];
    aboutMyEducation = json['about_my_education'];
    education = json['education'];
    anyOtherQualifications = json['any_other_qualifications'];
    aboutMyCareer = json['about_my_career'];
    employedIn = json['employed_in'];
    occupation = json['occupation'];
    designation = json['designation'];
    organizationName = json['organization_name'];
    jobLocation = json['job_location'];
    annualIncome = json['annual_income'];
    countryLivingIn = json['country_living_in'];
    stateLivingIn = json['state_living_in'];
    cityLivingIn = json['city_living_in'];
    addressLivingIn = json['address_living_in'];
    familyType = json['family_type'];
    familyStatus = json['family_status'];
    fatherName = json['father_name'];
    fatherOccupation = json['father_occupation'];
    motherName = json['mother_name'];
    motherOccupation = json['mother_occupation'];
    noOfBrothers = json['no_of_brothers'];
    noOfSisters = json['no_of_sisters'];
    marriedBrothers = json['married_brothers'];
    marriedSisters = json['married_sisters'];
    familyIncome = json['family_income'];
    aboutFamily = json['about_family'];
    diet = json['diet'];
    isDrinking = json['is_drinking'];
    isSmoking = json['is_smoking'];
    aboutMe = json['about_me'];
    anyDisability = json['any_disability'];
    lookingFor = json['looking_for'];
    partnerAgeFrom = json['partner_age_from'];
    partnerAgeTo = json['partner_age_to'];
    partnerCountry = json['partner_country'];
    partnerReligion = json['partner_religion'];
    partnerCast = json['partner_cast'];
    partnerHeightFrom = json['partner_height_from'];
    partnerHeightTo = json['partner_height_to'];
    partnerEducation = json['partner_education'];
    partnerMothertongue = json['partner_mothertongue'];
    partnerAnnualIncome = json['partner_annual_income'];
    horoscopeNeeded = json['horoscope_needed'];
    referralCode = json['referral_code'];
    idProof = json['id_proof'];
    photo = json['photo'];
    photoPassword = json['photo_password'];
    photoApproved = json['photo_approved'];
    active = json['active'];
    activation = json['activation'];
    memberType = json['member_type'];
    planId = json['plan_id'];
    planActivationDate = json['plan_activation_date'];
    profileCompleted = json['profile_completed'];
    promoted = json['promoted'];
    remarks = json['remarks'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['registration_date'] = this.registrationDate;
    data['profile_id'] = this.profileId;
    data['username'] = this.username;
    data['profile_created_for'] = this.profileCreatedFor;
    data['full_name'] = this.fullName;
    data['email'] = this.email;
    data['mobile_number'] = this.mobileNumber;
    data['alternate_number'] = this.alternateNumber;
    data['whatsapp_number'] = this.whatsappNumber;
    data['birth_date_time'] = this.birthDateTime;
    data['password'] = this.password;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['gender'] = this.gender;
    data['blood_group'] = this.bloodGroup;
    data['health_info'] = this.healthInfo;
    data['birth_place'] = this.birthPlace;
    data['religion'] = this.religion;
    data['mother_tongue'] = this.motherTongue;
    data['cast'] = this.cast;
    data['sub_cast'] = this.subCast;
    data['gotra'] = this.gotra;
    data['manglik'] = this.manglik;
    data['marital_status'] = this.maritalStatus;
    data['no_of_child'] = this.noOfChild;
    data['about_my_education'] = this.aboutMyEducation;
    data['education'] = this.education;
    data['any_other_qualifications'] = this.anyOtherQualifications;
    data['about_my_career'] = this.aboutMyCareer;
    data['employed_in'] = this.employedIn;
    data['occupation'] = this.occupation;
    data['designation'] = this.designation;
    data['organization_name'] = this.organizationName;
    data['job_location'] = this.jobLocation;
    data['annual_income'] = this.annualIncome;
    data['country_living_in'] = this.countryLivingIn;
    data['state_living_in'] = this.stateLivingIn;
    data['city_living_in'] = this.cityLivingIn;
    data['address_living_in'] = this.addressLivingIn;
    data['family_type'] = this.familyType;
    data['family_status'] = this.familyStatus;
    data['father_name'] = this.fatherName;
    data['father_occupation'] = this.fatherOccupation;
    data['mother_name'] = this.motherName;
    data['mother_occupation'] = this.motherOccupation;
    data['no_of_brothers'] = this.noOfBrothers;
    data['no_of_sisters'] = this.noOfSisters;
    data['married_brothers'] = this.marriedBrothers;
    data['married_sisters'] = this.marriedSisters;
    data['family_income'] = this.familyIncome;
    data['about_family'] = this.aboutFamily;
    data['diet'] = this.diet;
    data['is_drinking'] = this.isDrinking;
    data['is_smoking'] = this.isSmoking;
    data['about_me'] = this.aboutMe;
    data['any_disability'] = this.anyDisability;
    data['looking_for'] = this.lookingFor;
    data['partner_age_from'] = this.partnerAgeFrom;
    data['partner_age_to'] = this.partnerAgeTo;
    data['partner_country'] = this.partnerCountry;
    data['partner_religion'] = this.partnerReligion;
    data['partner_cast'] = this.partnerCast;
    data['partner_height_from'] = this.partnerHeightFrom;
    data['partner_height_to'] = this.partnerHeightTo;
    data['partner_education'] = this.partnerEducation;
    data['partner_mothertongue'] = this.partnerMothertongue;
    data['partner_annual_income'] = this.partnerAnnualIncome;
    data['horoscope_needed'] = this.horoscopeNeeded;
    data['referral_code'] = this.referralCode;
    data['id_proof'] = this.idProof;
    data['photo'] = this.photo;
    data['photo_password'] = this.photoPassword;
    data['photo_approved'] = this.photoApproved;
    data['active'] = this.active;
    data['activation'] = this.activation;
    data['member_type'] = this.memberType;
    data['plan_id'] = this.planId;
    data['plan_activation_date'] = this.planActivationDate;
    data['profile_completed'] = this.profileCompleted;
    data['promoted'] = this.promoted;
    data['remarks'] = this.remarks;
    return data;
  }
}
