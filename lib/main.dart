import 'package:avatar/routes.dart';
import 'package:avatar/view/screen/OnBoarding.dart';
import 'package:avatar/view/screen/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constant/services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const splash(),
      getPages: routes,
    );
  }
}
