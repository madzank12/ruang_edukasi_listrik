import 'package:flutter/material.dart';
import 'package:ruang_edukasi_listrik/screen/user_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                color: Colors.blue[900],
                child: Column(
                  children: <Widget>[
                    Text(
                      "Selamat Datang\ndi Media Pemebelajaran Dasar Listrik\ndan Elektronika Berbasis Mobile Application",
                      style: TextStyle(
                          fontFamily: 'FontMontserratAlternates',
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 90),
                      child: Row(
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            padding: const EdgeInsets.all(4),
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/UNY.png',
                                height: 65,
                                width: 65,
                              ),
                            ),
                          ),
                          SizedBox(height: 50),
                          const Text(
                            'x',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          Column(
                            children: [
                              Container(
                                height: 65,
                                width: 65,
                                padding: const EdgeInsets.all(4),
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/images/Hamong Putera.png',
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/REL1.png"))),
            ),
            SizedBox(
              height: 60,
            ),
            Column(
              children: <Widget>[
                MaterialButton(
                  color: Colors.blue[900],
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UserScreen()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Mulai",
                    style: TextStyle(
                        fontFamily: 'FontMontserratAlternates',
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
