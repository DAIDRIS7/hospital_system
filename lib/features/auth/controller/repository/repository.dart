import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hospital/features/auth/model/model.dart';

class AuthRepo {
  postLogIn() async {
    final response =
        await Dio().post('http://api.instant-ss.com/api/v1/login', data: {
      'phoneNumber': AuthModel().phoneNumber,
      'password': AuthModel().password,
    });
    var data = response.data;
    return data;

    print(data);
  }
}
