import 'dart:io';

import 'package:avatar/view/screen/OnBoarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';

import '../../controller/textRecognition.dart';
import '../widget/result/TextResult.dart';
import '../widget/result/boxResult.dart';

class Result extends GetView<textRecognition_controllerImp> {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(textRecognition_controllerImp());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Get.back();
            }),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text("Scan Result"),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            boxResult(),
            const SizedBox(
              height: 20,
            ),
            TextResult()
          ],
        )),
      )),
    );
  }
}
