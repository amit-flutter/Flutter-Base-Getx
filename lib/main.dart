import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopland/screen/setup/splace.dart';
import 'package:shopland/utils/translation/traslation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "ShopLand",
      debugShowCheckedModeBanner: false,
      translations: LocaleString(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('ar', 'AE'),
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashScreen(),
    );
  }
}
