import 'package:avatar/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/datasource/static/static.dart';

class customSliderOnBoarding extends GetView<onBoardingControllerImp> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          Image.asset(
            onBoardingList[i].image!,
            width: 300,
            height: 250,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            onBoardingList[i].title!,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                onBoardingList[i].body!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    height: 2,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              )),
        ],
      ),
    );
  }
}
