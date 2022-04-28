import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:grad/app/controller/auth/auth_manager_controller.dart';
import 'package:grad/app/ui/android/screen/navigation.dart';
import 'package:grad/app/ui/android/screen/start/welcome.dart';

class OnBoard extends GetView<AuthManagerController> {
  final client;
  final channel;
  OnBoard({
    required this.client,
    required this.channel,
  });
  @override
  Widget build(BuildContext context) {
    ///
    /// if not login -> navigation {home screen}
    /// else welcome -- select school
    ///
    return Obx(() {
      return controller.isLogin.value
          ? Navigation(
              client: client,
              channel: channel,
            )
          : Welcome();
    });
  }
}
