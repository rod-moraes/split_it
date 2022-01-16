import 'package:flutter/material.dart';
import 'package:split_it_ignite/core/core.dart';

class SplashController {
  void redirectSplash(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((_) =>
        Navigator.pushNamedAndRemoveUntil(
            context, RouterClass.login, (Route<dynamic> route) => false));
  }
}
