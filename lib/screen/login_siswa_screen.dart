import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:provider/provider.dart';
import 'package:ruang_edukasi_listrik/screen/home_page.dart';

import '../providers/auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var key;

  var title;

  Duration get loginTime => Duration(milliseconds: 2250);

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

      // ignore: null_check_always_fails
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

      // ignore: null_check_always_fails
      return null!;
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      // ignore: null_check_always_fails
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
      // ignore: null_check_always_fails
      return null!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Silakan Masukkan Akun Anda',
      logo: 'assets/images/listrik2 1.png',
      onLogin: _authUserLogin,
      onSignup: _authUserSignUp,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(key: key, title: title),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
