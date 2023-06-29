import 'package:avatar/core/constant/imageAsset.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../controller/textRecognition.dart';
import '../widget/home/castomImageHome.dart';
import '../widget/home/castomTextHome.dart';
import '../widget/home/customButtomHome.dart';

class home extends GetView<textRecognition_controllerImp> {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(textRecognition_controllerImp());

    return Scaffold(
      backgroundColor: Color(0xff2196f3),
      body: SafeArea(
          child: Column(children: [
        ImageHome(),
        SizedBox(
          height: 20,
        ),
        const customtext(),
        SizedBox(
          height: 30,
        ),
        CustomButtonHome(
          color: Colors.blue[400],
          iconss: Icons.camera_alt,
          title: "Take a picture",
          onTap: () {
            controller.getImage(ImageSource.camera);
          },
        ),
        SizedBox(
          height: 20,
        ),
        CustomButtonHome(
          color: Colors.red[400],
          iconss: Icons.image,
          title: "Gallery",
          onTap: () {
            controller.getImage(ImageSource.gallery);
          },
        )
      ])),
    );
  }
}
