import 'package:avatar/core/constant/imageAsset.dart';
import 'package:flutter/material.dart';

class ImageHome extends StatelessWidget {
  const ImageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/67.png",
      // appImageAsset.splash,
      width: double.infinity,
      height: 350,
      // fit: BoxFit.fill,
    );
  }
}
