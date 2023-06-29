import 'package:flutter/material.dart';
import 'package:avatar/core/constant/imageAsset.dart';

class imageSplash extends StatelessWidget {
  const imageSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 170),
      child: Image.asset(
        appImageAsset.splash,
      ),
    );
  }
}
