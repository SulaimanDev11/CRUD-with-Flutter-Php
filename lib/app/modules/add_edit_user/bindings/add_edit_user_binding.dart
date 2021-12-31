import 'package:get/get.dart';

import '../controllers/add_edit_user_controller.dart';

class AddEditUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddEditUserController>(
      () => AddEditUserController(),
    );
  }
}
