import 'package:flutter/material.dart';

import '../../../controller/textRecognition.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class TextResult extends GetView<textRecognition_controllerImp> {
  const TextResult({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(textRecognition_controllerImp());

    return Container(
      width: double.infinity,
      color: Colors.grey[200],
      child: SelectableText(
        controller.scannedText,
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    );
  }
}
