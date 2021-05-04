class DenunciarResponseModel {
  final String token;
  final String error;

  DenunciarResponseModel({this.error, this.token});
  factory DenunciarResponseModel.fromJson(Map<String, dynamic> json) {
    return DenunciarResponseModel(
        token: json["token"] != null ? json["token"] : "",
        error: json["error"] != null ? json["erro"] : "");
  }
}

class DenunciaModel {
  StartLocation startLocation;

  DenunciaModel({this.startLocation});

  DenunciaModel.fromJson(Map<String, dynamic> json) {
    startLocation = json['startLocation'] != null
        ? new StartLocation.fromJson(json['startLocation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.startLocation != null) {
      data['startLocation'] = this.startLocation.toJson();
    }
    return data;
  }
}

class StartLocation {
  String type;
  List<double> coordinates;

  StartLocation({this.type, this.coordinates});

  StartLocation.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    coordinates = json['coordinates'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['coordinates'] = this.coordinates;
    return data;
  }
}
