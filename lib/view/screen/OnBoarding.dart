import 'package:avatar/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/services/services.dart';
import '../widget/onboarding/CustomButtonOnBoarding .dart';
import '../widget/onboarding/customslider.dart';
import '../widget/onboarding/dotcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(onBoardingControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 45,
          ),
          Expanded(flex: 3, child: customSliderOnBoarding()),
          Expanded(
              child: Column(
            children: [
              CustomDotControllerOnBoarding(),
              Spacer(flex: 2),
              CustomButtonOnBoarding()
            ],
          ))
        ],
      )),
    );
  }
}
