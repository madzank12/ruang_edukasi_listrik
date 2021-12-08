import 'package:flutter/material.dart';

class ImageBackground extends StatelessWidget {
  const ImageBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            'assets/images/engineering.jpg',
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
