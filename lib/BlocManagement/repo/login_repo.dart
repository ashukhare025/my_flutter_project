import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_project/BlocManagement/Model/login_req_model.dart';

import '../Model/login_resp_model.dart';

class LoginRepo {
  Future<LoginRespModel> login(String userName, String password) async {
    var url = "https://dummyjson.com/auth/login";

    // LoginReqModel loginReqModel = LoginReqModel(
    //   username: userName,
    //   password: password,
    // );

    http.Response response = await http.post(
      Uri.parse(url),
      headers: {"Content-Type": "application/x-www-form-urlencoded"},
      body: {"username": userName, "password": password},
    );

    print("Status Code: ${response.statusCode}");
    print("Response Body: ${response.body}");

    if (response.statusCode == 200) {
      var resBody = jsonDecode(response.body);
      return LoginRespModel.fromJson(resBody);
    } else {
      throw Exception(jsonDecode(response.body)['message']);
    }
  }
}

// {"username": "kminchelle", "password": "0lelplR"}

// "username": "emilys",
// "password": "emilyspass"
