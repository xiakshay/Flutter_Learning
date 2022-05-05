// ignore: file_names
import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "Assets/Images/img1.jpg",
      fit: BoxFit.fitHeight,
      // width: 300,
    );
  }
}
