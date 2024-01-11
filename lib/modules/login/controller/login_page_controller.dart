import 'package:get/get.dart';
import 'package:nature_app/modules/home_page/view/home_page.dart';
import 'package:nature_app/services/local_storage/local_database.dart';
import 'package:nature_app/services/cloud_storage/cloud_services.dart';
import 'package:nature_app/shared/components/components.dart';

class LoginPageController extends GetxController {
  Future<void> loginUser(
      {required String email, required String password}) async {
    try {
      final userData =
          await CloudServices.instance.login(email: email, password: password);
      if (userData != null) {
        await LocalDatabase.instance.storeDataFromMap(map: userData);
        Get.snackbar('Success', 'Welcome to our app....');
        navigateAndFinish(Get.context, HomePage());
      } else {
        Get.snackbar('Error', 'Invalid email or password');
      }
    } catch (error) {
      print('Error during login: $error');
      Get.snackbar('Error', 'An error occurred during login.');
    }
  }
}
