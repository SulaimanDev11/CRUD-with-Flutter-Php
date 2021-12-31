import 'package:get/get.dart';

import '../controllers/user_view_controller.dart';

class UserViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserViewController>(
      () => UserViewController(),
    );
  }
}
