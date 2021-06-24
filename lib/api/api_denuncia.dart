import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/denuncia_model.dart';
import '../model/cadastrar_model.dart';

class ApiDenuncia extends ChangeNotifier {
  final String token;

  ApiDenuncia(this.token);

  Future<CasdastrarResponseModel> cadastrar(
      CadastrarRequestModel requestModel) async {
    var url = Uri.parse('http://192.168.100.9:3000/api/v1/users/signup');
    final response = await http.post(url, body: requestModel.toJson());
    if (response.statusCode == 201 || response.statusCode == 400) {
      return CasdastrarResponseModel.fromJson(
        jsonDecode(response.body),
      );
    } else {
      throw Exception("Error ao carregar Dados");
    }
  }

  Future<DenunciaResponseModel> denunciar(DenunciaRequest requestModel) async {
    print(token);
    var url = Uri.parse('http://192.168.100.9:3000/api/v1/denuncia');
    try {
      final response = await http.post(url,
          headers: {'Authorization': 'Bearer $token'},
          body: json.encode(requestModel.toJson()));
      if (response.statusCode == 201 || response.statusCode == 400) {
        return DenunciaResponseModel.fromJson(
          jsonDecode(response.body),
        );
      } else {
        throw Exception("Error ao carregar Dados +++ ${response.statusCode}");
      }
    } catch (e) {
      print(e);
    }
  }
}
