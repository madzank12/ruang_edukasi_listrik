import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            children: [
              Container(
                height: 70,
                width: 70,
                child: Image.asset('assets/images/REL1.png'),
              ),
              SizedBox(height: 20),
              Text(
                'Kami mengucapkan terimakasih kepada semua pihak yang telah membantu dan mendukung pengembangan media pembelajaran ini. Semoga media ini bermanfaat bagi pendidikan di sekolah baik bagi siswa, guru, lembaga pendidikan, maupun untuk tujuan pengembangan.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30),
              Text(
                'Kami menyadari bahwa media masih jauh dari kesempurnaan sehingga kami membutuhkan kritik dan masukan untuk pengembangan media kedepannya.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30),
              Text(
                'Tim Pengembang',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/foto_profil.jpeg',
                height: 200,
              ),
              SizedBox(height: 20),
              Text(
                'Imaduddin Zanki',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Pendidikan Teknik Mekatronika',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
