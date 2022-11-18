import 'package:flutter/cupertino.dart';
import 'package:sample/provider/bloc/login_bloc.dart';
import 'package:sample/provider/bloc/registration_bloc.dart';

import 'bloc/test_bloc.dart';

class BlocProvider extends InheritedWidget {
  final TestBloc testBloc;
  final RegistrationBloc registrationBloc;
  final LoginBloc loginBloc;
  const BlocProvider(
      {required this.testBloc,
      required this.registrationBloc,
      required this.loginBloc,
      required Widget child,
      Key? key})
      : super(child: child, key: key);

  static BlocProvider? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<BlocProvider>();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
