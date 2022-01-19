import 'package:flutter/material.dart';
import 'package:split_it_ignite/core/core.dart';
import 'package:split_it_ignite/domain/login/model/user_model.dart';

import 'app_bar/app_bar_home_widget.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  const HomePage({Key? key, required this.user}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AppConfigController _controllerConfig = AppConfigController();
  @override
  Widget build(BuildContext context) {
    _controllerConfig.colorStatus(isWhite: true);
    return Scaffold(
      appBar: AppBarHomeWidget(
        onTap: () {
          print("asd");
        },
        user: widget.user,
      ),
      body: Center(child: Text("Teste")),
    );
  }
}
