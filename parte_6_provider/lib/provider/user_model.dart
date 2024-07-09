import 'package:flutter/material.dart';

class UserModel {
  String name;
  String imgAvatarUrl;
  String bithDate;

  @required
  UserModel({
    required this.name,
    required this.imgAvatarUrl,
    required this.bithDate,
  });
}
