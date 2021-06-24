import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/login_model.dart';

class Auth extends ChangeNotifier {
  String _token;

  bool get isAuth {
    return token != null;
  }

  String get token {
    if (_token != null) {
      return _token;
    }
    return null;
  }

  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
    var url = ('http://new-sigws.intranet.uema.br/api/v1/login');
    Map<String, String> headers = {
      "appname": "sigws_node",
      "apptoken": "cb30ca57467aa62d600ab5171f4bef93",
      "content-Type": "application/json"
    };
    var dio = Dio();

    final response = await dio.post(
      url,
      data: {"login": "02489573330", "senha": "fredctic2021"},
    ).then((res) async {
      //_token = responseData['token'];
      // final prefs = await SharedPreferences.getInstance();
      // final userData = json.encode({
      //   'token': _token,
      // });
      // prefs.setString('userData', userData);
      print(res.data);
    }).catchError((error) {
      print(error);
      throw Exception('Erro ao carregar Dados');
    });
  }

  Future<bool> tryAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('userData')) {
      print('false');
      return false;
    }
    final extractUserData =
        json.decode(prefs.getString('userData')) as Map<String, Object>;
    _token = extractUserData['token'];
    notifyListeners();
    return true;
  } //
}
