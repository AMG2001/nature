import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nature_app/models/users/user_data_model.dart';
import 'package:nature_app/services/cloud_storage/cloud_services.dart';

class RegisterPageController extends GetxController {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();

  Future<void> registerUser() async {
    await CloudServices.instance.registerUser(
        userDataModel: UserDataModel(
            firstName: firstNameController.text.trim(),
            lastName: lastNameController.text.trim(),
            fullName: firstNameController.text.trim() +
                " " +
                lastNameController.text.trim(),
            email: emailController.text.trim(),
            password: passwordController.text.trim()));
  }
}
