import 'dart:io';

import 'package:avatar/core/constant/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';
// class TextRecog_Controller extends GetxController {
//   var selectedImagePath = ''.obs;
//   Future textRecognition(XFile img) async {
//     final textrecognizer = TextRecognizer(script: TextRecognitionScript.latin);
//     final inputImage = InputImage.fromFilePath(img.path);
//     final RecognizedText recognizedtext =
//         await textrecognizer.processImage(inputImage);
//     final txt = recognizedtext.text;
//     print(txt);
//   }

//   void getImage(ImageSource imageSource) async {
//     var pickedFile = await ImagePicker().pickImage(source: imageSource);

//     if (pickedFile != null) {
//       selectedImagePath.value = pickedFile.path;
//       textRecognition(pickedFile);

//       // Get.toNamed(AppRoute.result);

//       @override
//       void onInit() {
//         super.onInit();
//       }

//       @override
//       void onReady() {
//         super.onReady();
//       }

//       @override
//       void onClose() {}
//     }
//   }
// }

abstract class textRecognition_controller extends GetxController {
  getImage(ImageSource source);
  onpagechanges(int i);
}

class textRecognition_controllerImp extends textRecognition_controller {
  bool textScanning = false;

  XFile? imageFile;

  String scannedText = "";
  @override
  void getImage(ImageSource source) async {
    try {
      final pickedImage = await ImagePicker().pickImage(source: source);
      if (pickedImage != null) {
        textScanning = true;
        imageFile = pickedImage;
        getRecognisedText(pickedImage);

        Get.toNamed(AppRoute.result);
        // getRecognisedText(pickedImage);
      }
    } catch (e) {
      textScanning = false;
      imageFile = null;
      scannedText = "Error occured while scanning";
      update();
    }
  }

  void getRecognisedText(XFile image) async {
    final inputImage = InputImage.fromFilePath(image.path);
    final textDetector = GoogleMlKit.vision.textDetectorV2();
    RecognisedText recognisedText = await textDetector.processImage(inputImage);
    await textDetector.close();
    scannedText = "";
    for (TextBlock block in recognisedText.blocks) {
      for (TextLine line in block.lines) {
        scannedText = scannedText + line.text + "\n";
      }
    }
    textScanning = false;
    update();
  }

  @override
  onpagechanges(int i) {
    // TODO: implement onpagechanges
    throw UnimplementedError();
  }
}
