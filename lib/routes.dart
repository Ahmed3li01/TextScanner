import 'package:avatar/view/screen/OnBoarding.dart';
import 'package:avatar/view/screen/home.dart';
import 'package:avatar/view/screen/result.dart';
import 'package:avatar/view/screen/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constant/middleware/mymiddleware.dart';
import 'core/constant/routes/routes.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const OnBoarding(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.home, page: () => const home()),
  GetPage(name: AppRoute.result, page: () => const Result()),
  GetPage(name: AppRoute.splash, page: () => const splash()),
  GetPage(name: AppRoute.OnBoarding, page: () => const OnBoarding()),
];
