import 'package:falcorp_response/features/home/presentation/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FalcorpApp extends StatelessWidget {


  FalcorpApp({super.key, required this.env});

  final String env;

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      locale: Get.deviceLocale,
      home: const HomePage(),

    );
  }

}