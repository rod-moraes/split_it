import 'package:split_it_ignite/domain/login/model/user_model.dart';
import 'package:split_it_ignite/domain/login/repository/login_repository.dart';

class LoginUseCase {
  LoginRepository repository = LoginRepository();

  // LOGAR COM GOOGLE (USECASE VOCÊ PODE FAZER GERENCIAMENTO DO USER)
  Future<UserModel> googleSignIn() async {
    try {
      // LOGAR COM GOOGLE
      UserModel user = await repository.googleSignIn();
      // throw "Teste falha";
      return user;
    } catch (e) {
      rethrow;
    }
  }

  void dispose() {
    repository.dispose();
  }
}
