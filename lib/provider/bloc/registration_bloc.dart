import 'package:flutter/cupertino.dart';
import 'package:sample/services/api_registration.dart';

import '../../model/dto_credentials.dart';

class RegistrationBloc {
  ApiRegistration _apiRegistration = ApiRegistration();
  final TextEditingController fnameCtrlr = TextEditingController();
  final TextEditingController mnameCtrlr = TextEditingController();
  final TextEditingController lnameCtrlr = TextEditingController();
  final TextEditingController addressCtrlr = TextEditingController();
  final TextEditingController emailtrlr = TextEditingController();
  final TextEditingController usernameCtrlr = TextEditingController();
  final TextEditingController passwordCtrlr = TextEditingController();

  Future<String> register() async {
    DtoCredentials _dto = DtoCredentials(
        fname: fnameCtrlr.text,
        mname: mnameCtrlr.text,
        lname: lnameCtrlr.text,
        address: addressCtrlr.text,
        email: emailtrlr.text,
        usermame: usernameCtrlr.text,
        password: passwordCtrlr.text);

    return await _apiRegistration.register(_dto);
  }
}
