import 'package:avatar/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../controller/textRecognition.dart';
// GetView<onBoardingControllerImp>

class CustomButtonHome extends StatelessWidget {
  final title;
  final IconData? iconss;
  final Color? color;
  final void Function()? onTap;
  CustomButtonHome({this.title, this.iconss, this.color, this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: 250,
        // margin: const EdgeInsets.only(bottom: 30),
        height: 40,
        child: MaterialButton(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
            textColor: Colors.white,
            onPressed: onTap,
            color: color,
            child: Row(
              children: [
                Icon(iconss),
                Padding(padding: EdgeInsets.all(5)),
                Text(
                  title,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                )
              ],
            )));
  }
}
