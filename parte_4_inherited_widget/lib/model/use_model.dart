import 'package:flutter/material.dart';

class UserModel extends InheritedWidget {
  final String name;
  final String imageAvatar;
  final String bithDate;
  final Widget inheritedChild;

  @required
  const UserModel({
    super.key,
    required this.name,
    required this.imageAvatar,
    required this.bithDate,
    required this.inheritedChild,
  }) : super(child: inheritedChild);

  @override
  bool updateShouldNotify(covariant UserModel oldWidget) {
    return name != oldWidget.name ||
        imageAvatar != oldWidget.imageAvatar ||
        bithDate != oldWidget.bithDate;
  }

  static UserModel of(BuildContext context) {
    var userModel = context.dependOnInheritedWidgetOfExactType<UserModel>();
    assert(userModel != null, "UserModel not existis in to BuildContext");
    return userModel!;
  }
}
