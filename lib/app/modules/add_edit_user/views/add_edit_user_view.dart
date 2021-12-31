import 'package:crud_php_mysql/app/data/model/user_model.dart';
import 'package:crud_php_mysql/app/data/service/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/add_edit_user_controller.dart';

class AddEditUserView extends GetView<AddEditUserController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Obx(
              () => controller.editMode.value ? Text('Update') : Text('Add')),
          centerTitle: true,
        ),
        body: Column(
          children: [
            TextField(
              controller: controller.nameText,
              decoration: InputDecoration(hintText: 'Enter Name'),
            ),
            TextField(
                controller: controller.emailText,
                decoration: InputDecoration(hintText: 'Enter Email')),
            ElevatedButton(
              onPressed: () {
                if (controller.editMode.value) {
                  UserModel userModel = UserModel(
                      id: controller.list[0].id,
                      name: controller.nameText.text,
                      email: controller.emailText.text);
                  controller.updateUser(userModel);
                } else {
                  if (controller.nameText.text.isEmpty ||
                      controller.emailText.text.isEmpty) {
                    Get.snackbar('EMPTY', 'Fields are required');
                  } else {
                    UserModel userModel = UserModel(
                        name: controller.nameText.text,
                        email: controller.emailText.text);
                    controller.add(userModel);
                  }
                }
                Get.back();
              },
              child: Text(controller.editMode.value ? 'Update' : 'Save'),
            ),
          ],
        ));
  }
}
