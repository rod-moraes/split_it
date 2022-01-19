import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:split_it_ignite/core/core.dart';
import 'package:split_it_ignite/domain/login/model/user_model.dart';
import 'package:split_it_ignite/domain/login/usecase/login_usecase.dart';
import 'package:split_it_ignite/modules/login/login_state.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  LoginUseCase loginUseCase = LoginUseCase();
  @observable
  LoginState loginState = LoginStateEmpty();

  // FUNÇÃO DE AÇÃO PARA LOGAR EM UM USUARIO DA GOOGLE
  @action
  Future<void> googleSignIn() async {
    try {
      // LOGAR COM GOOGLE
      loginState = LoginStateLoading();
      UserModel userModel = await loginUseCase.googleSignIn();
      await Future.delayed(const Duration(seconds: 2));
      loginState = LoginStateSuccess(user: userModel);
    } catch (error) {
      loginState = LoginStateFailure(message: error.toString());
      if (kDebugMode) print(error);
    }
  }

  // FUNÇÃO PARA ABRIR O SNACKBAR
  void showSnackBar(BuildContext context) {
    SnackBar snackBar = SnackBar(
      content: Text(
        "Erro no login: ${(loginState as LoginStateFailure).message}",
        textAlign: TextAlign.center,
        style: AppTheme.textStyles.textSnackBar,
      ),
      backgroundColor: Colors.red,
    );
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  // FUNÇÃO PARA EXECUTAR SEMPRE QUE TIVER UMA ALTERAÇÃO NO LOGINSTATE
  void autoRun(BuildContext context) {
    autorun((_) {
      if (loginState is LoginStateFailure) {
        showSnackBar(context);
      } else if (loginState is LoginStateSuccess) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          RouterClass.home,
          (Route<dynamic> route) => false,
          arguments: (loginState as LoginStateSuccess).user,
        );
      }
    });
  }
}
