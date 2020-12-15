import 'package:the_cat_app/app/shared/models/breed_model.dart';

class ResponseModel {
  ResponseModel({
    this.breeds,
  });
  List<Breed> breeds;

  factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
        breeds: List<Breed>.from(json["breeds"].map((x) => Breed.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "breeds": List<dynamic>.from(breeds.map((x) => x.toJson())),
      };
}
