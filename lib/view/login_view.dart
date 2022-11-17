import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sample/view/registration_view.dart';

import '../components/app_button.dart';
import '../components/app_textfield.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginView> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Sample"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextField(
              controller: usernameController,
              hintText: 'Username',
              myIcon: Icon(Icons.person),
              obscureText: false,
            ),
            AppTextField(
              controller: passwordContoller,
              hintText: 'Password',
              myIcon: Icon(Icons.key),
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            AppButton(
              onpressed: () {},
              title: 'Login',
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            AppButton(
              onpressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegistrationView()));
              },
              title: 'Register',
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
