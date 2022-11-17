import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sample/components/app_button.dart';
import 'package:sample/components/app_textfield.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({Key? key}) : super(key: key);

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  final TextEditingController fnameCtrlr = TextEditingController();
  final TextEditingController mnameCtrlr = TextEditingController();
  final TextEditingController lnameCtrlr = TextEditingController();
  final TextEditingController addressCtrlr = TextEditingController();
  final TextEditingController emailtrlr = TextEditingController();
  final TextEditingController usernameCtrlr = TextEditingController();
  final TextEditingController passwordCtrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            AppTextField(
              controller: fnameCtrlr,
              hintText: 'First Name',
              obscureText: false,
            ),
            SizedBox(
              height: 15,
            ),
            AppTextField(
              controller: mnameCtrlr,
              hintText: 'Middle Name',
              obscureText: false,
            ),
            SizedBox(
              height: 15,
            ),
            AppTextField(
              controller: lnameCtrlr,
              hintText: 'Last Name',
              obscureText: false,
            ),
            SizedBox(
              height: 15,
            ),
            AppTextField(
              controller: addressCtrlr,
              hintText: 'Address',
              obscureText: false,
              myIcon: Icon(Icons.pin_drop),
            ),
            SizedBox(
              height: 15,
            ),
            AppTextField(
              controller: emailtrlr,
              hintText: 'Email',
              obscureText: false,
              myIcon: Icon(Icons.email),
            ),
            SizedBox(
              height: 15,
            ),
            AppTextField(
              controller: usernameCtrlr,
              hintText: 'Username',
              obscureText: false,
              myIcon: Icon(Icons.person),
            ),
            SizedBox(
              height: 15,
            ),
            AppTextField(
              controller: passwordCtrlr,
              hintText: 'Password',
              myIcon: Icon(Icons.key),
              obscureText: true,
            ),
            SizedBox(
              height: 15,
            ),
            AppButton(title: "SUBMIT", onpressed: () {})
          ],
        ),
      ),
    );
  }
}
