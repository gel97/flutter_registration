import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Function onpressed;

  const AppButton({
    required this.title,
    required this.onpressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.green, shape: const StadiumBorder()),
          onPressed: () {
            onpressed();
          },
          child: Text(title)),
    );
  }
}
