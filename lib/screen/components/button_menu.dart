import 'package:flutter/material.dart';

class ButtonMenu extends StatelessWidget {
  ButtonMenu(this.context, this.name, this.route);
  final BuildContext context;
  final String name;
  final route;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.blue[900],
      minWidth: double.infinity,
      height: 60,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => route));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Text(
        "$name".toUpperCase(),
        textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
