import 'package:flutter/material.dart';

class CustomNavigatorObserver extends NavigatorObserver{

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
  }
}
