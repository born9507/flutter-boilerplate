import 'package:boilerplate/controllers/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/message_controller.dart';
import 'pages/home_page.dart';

void main() {
  // GetX controller 등록
  Get.put(CountController());
  Get.put(MessageController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}
