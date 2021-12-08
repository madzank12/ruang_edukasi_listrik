import 'package:flutter/material.dart';
import 'package:ruang_edukasi_listrik/screen/guru/dashboard_guru.dart';

class ButtonHome extends StatelessWidget {
  ButtonHome(this.context);
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialButton(
      color: Colors.teal,
      minWidth: size.width * 0.3,
      height: 50,
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DashboardGuru();
        }));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Text(
        "HOME",
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
