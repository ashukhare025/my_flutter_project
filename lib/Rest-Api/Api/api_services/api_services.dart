import 'dart:convert';

import '../models/get_users_list.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<GetUsersListModel?> getUsersList(String page) async {
    try {
      var response = await http.get(
        Uri.parse('https://reqres.in/api/users?page=$page'),
      );
      if (response.statusCode == 200) {
        GetUsersListModel getUsersListModel = GetUsersListModel.fromJson(
          jsonDecode(response.body),
        );
        return getUsersListModel;
      }
    } catch (err) {
      print(err.toString());
    }
    return null;
  }
}
