import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shopland/screen/setup/login.dart';
import 'package:shopland/screen/setup/setup.dart';
import 'package:shopland/utils/constant/colors.dart';
import 'package:shopland/utils/constant/strings.dart';
import 'package:shopland/utils/share_preference.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateToSetupPage();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: ColorConst.kBackground1, systemNavigationBarDividerColor: ColorConst.kBackground1));
  }

  void _navigateToSetupPage() async {
    bool isLogin = await Preferences.isLogin();
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Get.offAll(isLogin ? const SetUpScreen() : const LoginScreen());
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (value) => SizedBox(
        height: context.height,
        width: context.width,
        child: Image.asset(StringConst.kLogo, fit: BoxFit.fitWidth),
      ),
    );
  }
}
