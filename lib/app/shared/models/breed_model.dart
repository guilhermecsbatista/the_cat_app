import 'package:the_cat_app/app/shared/models/image_model.dart';
import 'package:the_cat_app/app/shared/models/integration_model.dart';
import 'package:the_cat_app/app/shared/models/origin_model.dart';

class Breed {
    Breed({
        this.id,
        this.integration,
        this.name,
        this.origin,
        this.temperaments,
        this.images,
    });

    String id;
    Integration integration;
    String name;
    Origin origin;
    List<Origin> temperaments;
    List<Image> images;

    factory Breed.fromJson(Map<String, dynamic> json) => Breed(
        id: json["id"],
        integration: Integration.fromJson(json["integration"]),
        name: json["name"],
        origin: Origin.fromJson(json["origin"]),
        temperaments: List<Origin>.from(json["temperaments"].map((x) => Origin.fromJson(x))),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "integration": integration.toJson(),
        "name": name,
        "origin": origin.toJson(),
        "temperaments": List<dynamic>.from(temperaments.map((x) => x.toJson())),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
    };
}