import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/routes/routes.dart';
import '../widget/splash/customText.dart';
import '../widget/splash/image.dart';

class splash extends GetView {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5)).then((value) {
      Get.offNamed(AppRoute.home);
    });

    return Scaffold(
      backgroundColor: Color(0xff937cff),
      body: Column(
        children: [
          imageSplash(),
          Center(
            child: Column(
              children: [
                customtextSplash(txt: "Convert"),
                customtextSplash(txt: "Image To Text"),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SpinKitThreeBounce(
                    color: Colors.white,
                    size: 50.0,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
