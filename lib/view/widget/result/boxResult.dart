import 'package:flutter/material.dart';

import '../../../controller/textRecognition.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class boxResult extends GetView<textRecognition_controllerImp> {
  const boxResult({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(textRecognition_controllerImp());

    return Container(
        child: Column(children: [
      if (controller.imageFile != null)
        Image.file(File(controller.imageFile!.path))
    ]));
  }
}
