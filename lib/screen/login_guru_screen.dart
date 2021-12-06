import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:provider/provider.dart';

import '../providers/auth.dart';
import './home_page.dart';

class LoginPageGuru extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPageGuru> {
  var title;

  var key;

  Duration get loginTime => const Duration(milliseconds: 2250);

  get users => null;

  Future<String> _authUserSignUp(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) async {
      try {
        await Provider.of<Auth>(context, listen: false)
            .signup(data.name, data.password);
      } catch (err) {
        return err.toString();
      }

      return null!;
    });
  }

  Future<String> _authUserLogin(LoginData data) {
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) async {
      try {
        await Provider.of<Auth>(context, listen: false)
            .login(data.name, data.password);
      } catch (err) {
        return err.toString();
      }

      return null!;
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      return null!;
    });
  }

  // ignore: unused_element
  Future<String> _mulai(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      return null!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Silakan Masukkan Akun Anda',
      logo: 'assets/images/REL1.png',
      onLogin: _authUserLogin,
      onSignup: _authUserSignUp,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => HomePage(key: key, title: title),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
