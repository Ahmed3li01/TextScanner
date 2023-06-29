import 'package:avatar/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<onBoardingControllerImp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: const EdgeInsets.only(bottom: 30),
        height: 40,
        child: MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
            textColor: Colors.white,
            onPressed: () {
              controller.next();
            },
            color: Colors.blue[400],
            child: const Text(
              "Continue",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )));
  }
}
