import '../model/login_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    var url = Uri.parse('https://example.com/whatsit/create') ;
    final response = await http.post(url, body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Erro ao carregar Dados');
    }
  }
}
