import 'package:crud_php_mysql/app/data/model/user_model.dart';
import 'package:crud_php_mysql/app/data/service/user_service.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_view_controller.dart';

class UserViewView extends GetView<UserViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Model Crud'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'UserViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
