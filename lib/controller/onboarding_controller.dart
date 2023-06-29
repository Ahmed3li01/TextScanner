import 'package:avatar/view/screen/OnBoarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../core/constant/routes/routes.dart';
import '../data/datasource/static/static.dart';
import '../core/constant/services/services.dart';

abstract class onBoardingController extends GetxController {
  next();
  onpagechanges(int i);
}

class onBoardingControllerImp extends onBoardingController {
  late PageController pageController;
  int currentpage = 0;
  MyServices myServices = Get.find();
  @override
  next() {
    currentpage++;
    if (currentpage > onBoardingList.length - 1) {
      myServices.sharedPreferences.setString("onboarding", "1");
      Get.offAllNamed(AppRoute.splash);
    } else {
      pageController.animateToPage(currentpage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentpage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  onpagechanges(int index) {
    // TODO: implement onpagechanges
    throw UnimplementedError();
  }
}
