import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:suministroshoreb/functions/showDialogSingleButton.dart';
import 'dart:convert';
import 'package:suministroshoreb/model/LoginModel.dart';
import 'package:suministroshoreb/BotomMenu.dart';

Future<LoginModel> requestLoginAPI(BuildContext context, String email, String password) async {
  final url = "http://71090d42b54a.ngrok.io/api/login/";


  Map<String, String> body = {
    'email': email,
    'password': password,
  };

  final response = await http.post(
    url,
    body: body,
  );

  if (response.statusCode == 200) {
    final responseJson = json.decode(response.body);
    print(responseJson);
    var user = new LoginModel.fromJson(responseJson);
    // Navigator.of(context).pushReplacementNamed('/ScreenOne');
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BotomMenuWidget() ));
    //showDialogSingleButton(context, "iniciar sesión", "Correcto", "OK");
    return LoginModel.fromJson(responseJson);
  }
  else {
    final responseJson = json.decode(response.body);
    showDialogSingleButton(context, "No se puede iniciar sesión", "Correo ó Contraseña incorrecta", "OK");
    return null;
  }
}