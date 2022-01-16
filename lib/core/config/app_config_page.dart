import 'package:split_it_ignite/modules/splash/splash_page.dart';

import '/core/core.dart';
import 'package:flutter/material.dart';

class AppConfigPage extends StatefulWidget {
  const AppConfigPage({
    Key? key,
  }) : super(key: key);

  @override
  _AppConfigPageState createState() => _AppConfigPageState();
}

class _AppConfigPageState extends State<AppConfigPage> {
  //CONTROLADOR COM FUNÇÕES DO TEMA
  final AppConfigController _controllerConfig = AppConfigController();

  late Future<void> _initialize;

  @override
  void initState() {
    _initialize = _controllerConfig.controllerAppTheme.currentThemeMode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // FUNÇÃO QUE INICIALIZA O FUTURE E COMEÇA A TESTAR OS CASOS
      future: _initialize,
      builder: (context, snapshot) {
        // VERIFICA SE RETORNOU ERRO NA FUNÇÃO FUTURE
        if (snapshot.hasError) {
          return const Material(
            child: Center(
              child: Text(
                "Não foi possível inicializar o Shared Preferences",
                textDirection: TextDirection.ltr,
              ),
            ),
          );
        }
        // VERIFICA SE RETORNOU COMPLETOU A FUNÇÃO NA FUNÇÃO FUTURE
        // E MANDA PARA PROXIMA ROTA
        if (snapshot.connectionState == ConnectionState.done) {
          WidgetsBinding.instance?.addPostFrameCallback((_) {
            Navigator.pushNamedAndRemoveUntil(
                context, RouterClass.splash, (Route<dynamic> route) => false);
          });
        }
        // ENQUANTO ESTÁ EM ESTADO DE LOADING NA FUNÇÃO FUTURE
        return const Material(
          child: Center(
            child: SplashPage(redirect: false),
          ),
        );
      },
    );
  }
}
