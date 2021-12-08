import 'package:flutter/material.dart';
import 'package:ruang_edukasi_listrik/screen/components/button_home.dart';
import 'package:ruang_edukasi_listrik/screen/components/button_menu.dart';
import 'package:ruang_edukasi_listrik/screen/components/image_background.dart';

class Materi extends StatelessWidget {
  const Materi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: Image.asset('assets/images/REL1.png'),
                  ),
                  ImageBackground(),
                  ButtonMenu(context, 'Upload Materi', Materi()),
                  SizedBox(
                    height: 10,
                  ),
                  ButtonMenu(context, 'LIHAT MATERI', Materi()),
                ],
              ),
              ButtonHome(context),
            ],
          ),
        ),
      ),
    );
  }
}
