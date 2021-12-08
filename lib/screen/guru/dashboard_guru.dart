import 'package:flutter/material.dart';
import 'package:ruang_edukasi_listrik/screen/components/button_menu.dart';
import 'package:ruang_edukasi_listrik/screen/guru/bantuan.dart';
import 'package:ruang_edukasi_listrik/screen/guru/evaluasi.dart';
import 'package:ruang_edukasi_listrik/screen/guru/laporan.dart';
import 'package:ruang_edukasi_listrik/screen/guru/materi.dart';
import 'package:ruang_edukasi_listrik/screen/guru/silabus.dart';

class DashboardGuru extends StatelessWidget {
  const DashboardGuru({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          children: <Widget>[
            Container(
              height: 70,
              width: 70,
              child: Image.asset('assets/images/REL1.png'),
            ),
            SizedBox(
              height: 20,
            ),
            ButtonMenu(context, 'Materi', Materi()),
            SizedBox(
              height: 10,
            ),
            ButtonMenu(context, 'Evaluasi', Evaluasi()),
            SizedBox(
              height: 10,
            ),
            ButtonMenu(context, 'Silabus', Silabus()),
            SizedBox(
              height: 10,
            ),
            ButtonMenu(context, 'Laporan', Laporan()),
            SizedBox(
              height: 10,
            ),
            ButtonMenu(context, 'Bantuan', Bantuan()),
          ],
        ),
      ),
    );
  }
}
