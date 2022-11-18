import 'package:flutter/material.dart';
import 'package:sample/provider/bloc/test_bloc.dart';
import 'package:sample/provider/bloc_provider.dart';
import 'package:sample/view/home_view.dart';
import 'package:sample/view/sample.dart';
import 'package:sample/view/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      testBloc: TestBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeView(),
      ),
    );
  }
}
