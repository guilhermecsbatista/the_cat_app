import 'package:the_cat_app/app/shared/models/integration_model.dart';

class Image {
    Image({
        this.id,
        this.integration,
        this.url,
    });

    String id;
    Integration integration;
    String url;

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        integration: Integration.fromJson(json["integration"]),
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "integration": integration.toJson(),
        "url": url,
    };
}