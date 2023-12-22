import 'package:get/get.dart';
import 'package:nature_app/services/cloud_storage/cloud_services.dart';

class LoginPageController extends GetxController {
  Future<void> loignUser(
      {required String email, required String password}) async {
    await CloudServices.instance
        .login(email: email, password: password)
        .then((value) {
      if (value.isEmpty) {
      } else {
        // TODO add storing these data in local storage .

        // TODO navigate to home page with data .
      }
    });
  }
}
