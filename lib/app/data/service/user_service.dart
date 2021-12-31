import 'dart:convert';

import 'package:crud_php_mysql/app/data/model/user_model.dart';
import 'package:http/http.dart' as http;

class UserService {
  static const ADD_URL = "http://192.168.10.15/crud-php-flutter/add.php";
  static const VIEW_URL = "http://192.168.10.15/crud-php-flutter/view.php";
  static const UPDATE_URL = "http://192.168.10.15/crud-php-flutter/update.php";
  static const DELETE_URL = "http://192.168.10.15/crud-php-flutter/delete.php";

  Future<String> addUser(UserModel userModel) async {
    var url = Uri.parse(ADD_URL);
    final response = await http.post(url, body: userModel.toJsonAdd());
    if (response.statusCode == 200) {
      print("Add Response:  " + response.body);
      return response.body;
    } else {
      return "Error";
    }
  }

  List<UserModel> userFromJson(String jsonString) {
    final data = json.decode(jsonString);
    return List<UserModel>.from(data.map((item) => UserModel.fromJson(item)));
  }

  Future<List<UserModel>> getUser() async {
    var url = Uri.parse(VIEW_URL);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      List<UserModel> list = userFromJson(response.body);
      return list;
    } else {
      return <UserModel>[];
    }
  }

  Future<String> updateUser(UserModel userModel) async {
    var url = Uri.parse(UPDATE_URL);
    final response = await http.post(url, body: userModel.toJsonUpdate());
    if (response.statusCode == 200) {
      print("Update Response:  " + response.body);
      return response.body;
    } else {
      return "Error";
    }
  }

  Future<String> deleteUser(UserModel userModel) async {
    var url = Uri.parse(DELETE_URL);
    final response = await http.post(url, body: userModel.toJsonUpdate());
    if (response.statusCode == 200) {
      print("Delete Response:  " + response.body);
      return response.body;
    } else {
      return "Error";
    }
  }
}
