import 'package:get/get.dart';

class MessageController extends GetxController {
  final _message = ''.obs;

  String get message => _message.value;

  set message(String message) => _message.value = message;
}
