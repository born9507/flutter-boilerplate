import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/message_controller.dart';

class DetailPage extends StatelessWidget {
  DetailPage({Key? key}) : super(key: key);
  final messageController = Get.find<MessageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(() => Text(messageController.message)),
      ),
    );
  }
}
