import 'package:crud_php_mysql/app/data/model/user_model.dart';
import 'package:crud_php_mysql/app/data/service/user_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddEditUserController extends GetxController {
  //TODO: Implement AddEditUserController

  final count = 0.obs;
  var editMode = false.obs;

  TextEditingController nameText = TextEditingController();
  TextEditingController emailText = TextEditingController();
  var list = Get.arguments ?? null;

  add(UserModel userModel) async {
    await UserService().addUser(userModel);
    emailText.text.isEmpty;
    nameText.text.isEmpty;
  }

  updateUser(UserModel userModel) async {
    editMode.value = true;
    await UserService().updateUser(userModel);
    emailText.text.isEmpty;
    nameText.text.isEmpty;
  }

  @override
  void onInit() {
    if (list != null) {
      editMode.value = true;
      nameText.text = list[0].name;
      emailText.text = list[0].email;
    } else {
      emailText.text.isEmpty;
      nameText.text.isEmpty;
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
