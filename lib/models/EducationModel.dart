// To parse this JSON data, do

import 'dart:convert';

EducationModel educationModelFromJson(String str) =>
    EducationModel.fromJson(json.decode(str));

String educationModelToJson(EducationModel data) => json.encode(data.toJson());

class EducationModel {
  EducationModel({
    required this.success,
    required this.educations,
  });

  bool? success;
  List<Education>? educations;

  factory EducationModel.fromJson(Map<String, dynamic> json) => EducationModel(
        success: json["success"],
        educations: List<Education>.from(
            json["Educations"].map((x) => Education.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "Educations": List<dynamic>.from(educations!.map((x) => x.toJson())),
      };
}

class Education {
  Education({
    required this.id,
    required this.education,
  });

  int id;
  String education;

  factory Education.fromJson(Map<String, dynamic> json) => Education(
        id: json["id"],
        education: json["education"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "education": education,
      };
}
