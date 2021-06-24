class DenunciaResponseModel {
  List<double> coordinates;

  DenunciaResponseModel({this.coordinates});

  DenunciaResponseModel.fromJson(Map<String, dynamic> json) {
    coordinates = json['coordinates'].cast<double>();  
  }
}

class DenunciaRequest {
  List<double> cordenadas;

  DenunciaRequest({this.cordenadas});
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'coordinates': cordenadas,
    };
    return map;
  }
}
