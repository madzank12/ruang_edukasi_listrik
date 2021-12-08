import 'package:flutter/material.dart';
import 'package:ruang_edukasi_listrik/screen/components/button_home.dart';

class Laporan extends StatelessWidget {
  const Laporan({Key? key}) : super(key: key);

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
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    color: Colors.blue[900],
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "LAPORAN",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
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
