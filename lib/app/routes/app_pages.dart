import 'package:get/get.dart';

import 'package:crud_php_mysql/app/modules/add_edit_user/bindings/add_edit_user_binding.dart';
import 'package:crud_php_mysql/app/modules/add_edit_user/views/add_edit_user_view.dart';
import 'package:crud_php_mysql/app/modules/home/bindings/home_binding.dart';
import 'package:crud_php_mysql/app/modules/home/views/home_view.dart';
import 'package:crud_php_mysql/app/modules/user_view/bindings/user_view_binding.dart';
import 'package:crud_php_mysql/app/modules/user_view/views/user_view_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADD_EDIT_USER,
      page: () => AddEditUserView(),
      binding: AddEditUserBinding(),
    ),
    GetPage(
      name: _Paths.USER_VIEW,
      page: () => UserViewView(),
      binding: UserViewBinding(),
    ),
  ];
}
