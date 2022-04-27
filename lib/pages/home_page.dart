import 'package:boilerplate/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/count_controller.dart';
import '../controllers/message_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final countController = Get.find<CountController>();
  final messageController = Get.find<MessageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        actions: [
          TextButton(
            onPressed: () => Get.to(() => DetailPage()),
            child: Text(
              "DetailPage",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Obx(() => Text(messageController.message)),
              Obx(() => Text(countController.count.toString())),
              Spacer(),
              TextField(
                onChanged: (text) {
                  messageController.message = text;
                },
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => countController.increment(),
                  child: Text('increment'),
                ),
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => countController.decrement(),
                  child: Text('decrement'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
