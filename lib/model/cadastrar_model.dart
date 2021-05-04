import 'package:flutter/cupertino.dart';

class CasdastrarResponseModel {
  final String token;
  final String error;

  CasdastrarResponseModel({this.error, this.token});

  factory CasdastrarResponseModel.fromJson(Map<String, dynamic> json) {
    return CasdastrarResponseModel(
        token: json["token"] != null ? json["token"] : "",
        error: json["error"] != null ? json["erro"] : "");
  }
}

class CadastrarRequestModel {
  String nome;
  String email;
  String senha;
  String confirmaSenha;

  CadastrarRequestModel(
      {this.nome, this.email, this.senha, this.confirmaSenha});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'name': nome.trim(),
      'email': email.trim(),
      'password': senha,
      'passwordConfirm': confirmaSenha
    };
    return map;
  }
}
