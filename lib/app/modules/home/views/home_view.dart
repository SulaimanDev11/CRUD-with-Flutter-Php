import 'package:crud_php_mysql/app/data/model/user_model.dart';
import 'package:crud_php_mysql/app/data/service/user_service.dart';
import 'package:crud_php_mysql/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Model Crud'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Get.toNamed(Routes.ADD_EDIT_USER)!
                    .then((value) => controller.getAllUser());
              },
              icon: Icon(Icons.add),
            )
          ],
        ),
        body: Obx(
          () => controller.isloading.value
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: controller.userList.length,
                  itemBuilder: (context, index) {
                    UserModel user = controller.userList[index];
                    return ListTile(
                      onTap: () {
                        Get.toNamed(Routes.ADD_EDIT_USER,
                            arguments: [user, index]);
                      },
                      leading: CircleAvatar(child: Text(user.name[0])),
                      title: Text(user.name),
                      subtitle: Text(user.email),
                      trailing: IconButton(
                          onPressed: () {
                            controller.deleteUser(user);
                          },
                          icon: Icon(Icons.delete),
                          color: Colors.red),
                    );
                  },
                ),
        ));
  }
}
