import 'package:crud_php_mysql/app/data/model/user_model.dart';
import 'package:crud_php_mysql/app/data/service/user_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  late List<UserModel> userList;
  var isloading = true.obs;
  getAllUser() async {
    userList = await UserService().getUser();

    isloading.value = false;
    print("user: ${userList.length}");
  }

  deleteUser(UserModel userModel) async {
    await UserService().deleteUser(userModel);

    isloading.value = false;
    print("user Deleted");
  }

  @override
  void onInit() {
    getAllUser();
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
