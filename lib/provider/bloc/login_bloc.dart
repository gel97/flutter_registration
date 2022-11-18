import 'package:flutter/cupertino.dart';
import 'package:sample/services/api_login.dart';
import 'package:sample/services/api_registration.dart';

import '../../model/dto_credentials.dart';

class LoginBloc {
  ApiLogin _apiLogin = ApiLogin();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordContoller = TextEditingController();

  Future<String> login() async {
    DtoCredentials _dto = DtoCredentials(
        usermame: usernameController.text, password: passwordContoller.text);

    return await _apiLogin.login(_dto).then((value) {
      if (value.statusCode == 200) {
        return "OK";
      } else {
        throw "Not Ok";
      }
    });
  }
}
