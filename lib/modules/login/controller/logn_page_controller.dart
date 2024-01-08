import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nature_app/local_database.dart';
import 'package:nature_app/models/users/user_data_model.dart';
import 'package:nature_app/services/cloud_storage/cloud_services.dart';

import '../../../shared/components/components.dart';
import '../../home_page/view/home_page.dart';


class LoginPageController extends GetxController {
  Future<void> loginUser(
      { var email,
        var password}
      ) async {
    try{
      final userData = await CloudServices.instance.login(email: email, password: password);
      final database = LocalDatabase();
      await database.initDatabase();
      final storedEmail = await database.getEmail();
      final storedPassword = await database.getPassword();

      if(email ==storedEmail && password == storedPassword){

        if(userData!= null){
          Get.snackbar('Success', 'Welcome to our app....');

        }else{
          Get.snackbar('Error', 'Invalid email or password');
        }

      }
      else{
        Get.snackbar('Error', 'Email or password is incorrect');
      }


        // TODO navigate to home page with data .

    }catch(error){
      print('Error during login: $error');
      Get.snackbar('Error', 'An error occurred during login.');
    }

      }
    }



