class Integration {
    Integration({
        this.id,
    });

    String id;

    factory Integration.fromJson(Map<String, dynamic> json) => Integration(
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
    };
}