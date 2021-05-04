import 'package:aglomeracao/model/cadastrar_model.dart';
import 'package:aglomeracao/model/denuncia_model.dart';

import '../model/login_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  //
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    var url = Uri.parse('http://192.168.100.9:3000/api/v1/users/login');
    final response = await http.post(url, body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Erro ao carregar Dados');
    }
  }

//
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

  //
  Future<DenunciarResponseModel> denunciar(DenunciaModel resquestModel) async {
    var url = Uri.parse('http://192.168.100.9:3000/api/v1/users/denuncia');
    final response = await http.post(url, body: resquestModel.toJson());
    if (response.statusCode == 201 || response.statusCode == 401) {
      return DenunciarResponseModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Erro ao carregar Dados");
    }
  }
}
