import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/components/app_button.dart';
import 'package:sample/components/app_textfield.dart';
import 'package:sample/model/dto_credentials.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../services/api_registration.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({Key? key}) : super(key: key);

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  ApiRegistration apiReg = ApiRegistration();

  final TextEditingController fnameCtrlr = TextEditingController();
  final TextEditingController mnameCtrlr = TextEditingController();
  final TextEditingController lnameCtrlr = TextEditingController();
  final TextEditingController addressCtrlr = TextEditingController();
  final TextEditingController emailtrlr = TextEditingController();
  final TextEditingController usernameCtrlr = TextEditingController();
  final TextEditingController passwordCtrlr = TextEditingController();

  bool? isLoading;
  @override
  void initState() {
    isLoading = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
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
                  AppButton(
                      title: "Register",
                      onpressed: () async {
                        print("Waiting");
                        setState(() {
                          isLoading = true;
                        });

                        await Future.delayed(Duration(seconds: 5));
                        setState(() {
                          isLoading = false;
                        });
                        DtoCredentials _dto = DtoCredentials(
                            fname: fnameCtrlr.text,
                            mname: mnameCtrlr.text,
                            lname: lnameCtrlr.text,
                            address: addressCtrlr.text,
                            email: emailtrlr.text,
                            usermame: usernameCtrlr.text,
                            password: passwordCtrlr.text);

                        await apiReg.register(_dto).then((value) {
                          print(value.toString());
                        }, onError: (error) {
                          print(error.toString());
                        });
                      })
                ],
              ),
            ),
          ),
          isLoading!
              ? Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Colors.black45,
                  child: Center(
                    child: SpinKitFadingCircle(
                      itemBuilder: (BuildContext context, int index) {
                        return DecoratedBox(
                          decoration: BoxDecoration(
                            color: index.isEven ? Colors.red : Colors.green,
                          ),
                        );
                      },
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
