import 'package:the_cat_app/app/shared/models/integration_model.dart';

class Origin {
    Origin({
        this.id,
        this.integration,
        this.description,
    });

    String id;
    Integration integration;
    String description;

    factory Origin.fromJson(Map<String, dynamic> json) => Origin(
        id: json["id"],
        integration: Integration.fromJson(json["integration"]),
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "integration": integration.toJson(),
        "description": description,
    };
}