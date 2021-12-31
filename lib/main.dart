import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

//HomeView is UserView

void main() {
  runApp(
    GetMaterialApp(
      title: "Flutter Model Class Crud",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
    ),
  );
}
