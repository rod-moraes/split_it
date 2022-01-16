import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sizer/sizer.dart';

import 'core.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final AppThemeController _controller = AppThemeController();

  @override
  Widget build(BuildContext context) {
    // SIZER É UM WIDGET QUE DEIXA FAZER TODOS OS TIPOS DE CONTROLE DE LAYOUT
    return Sizer(builder: (context, orientation, deviceType) {
      // OBSERVER VAI FICAR OBSERVANDO AS ALTERAÇÕES DO TEMA
      return Observer(builder: (_) {
        return MaterialApp(
          //DESABILITA O BANNER "DEBUG"
          debugShowCheckedModeBanner: false,
          title: "Title APP",
          themeMode: _controller.themeMode,
          onGenerateRoute: RouterClass.generateRoute,
        );
      });
    });
  }
}
