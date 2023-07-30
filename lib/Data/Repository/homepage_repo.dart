import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../API/api.dart';
import '../Models/homepage_model.dart';

abstract class HomePageRepository {
  Future<HomePageModel> fetchDetails(String name, String job);
}

class HomePageRepo extends HomePageRepository {
  @override
  Future<HomePageModel> fetchDetails(String name,String password) async {
    final response = await http.post(Uri.parse("$baseUrl/Api/WebApi/ApiAccount/LoginAccess"),
        body: {  "UserName": name,
          "Password": password,
          "DeviceId": 'deviceId',
          "DeviceName": 'deviceName'});
      return HomePageModel.fromJson(jsonDecode(response.body));
  }
}
