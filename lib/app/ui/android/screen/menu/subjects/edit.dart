import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Grad/app/controller/menu/subjects_controller.dart';
import 'package:Grad/app/core/functions/functions.dart';

class EditSubject extends GetView<SubjectsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(name: "Edit Subject"),
      body: Center(
        child: Text('Edit Subject'),
      ),
    );
  }
}
