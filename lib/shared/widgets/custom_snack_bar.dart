import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showCustomSnackBar(
    {required String title,
    required IconData iconData,
    Color backgroundColor = Colors.black}) {
  Get.showSnackbar(
    GetSnackBar(
      titleText: Text(title),
      messageText: SizedBox(),
      icon: Icon(iconData),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: backgroundColor,
    ),
  );
}

void showInformativeSnackBar({required String title, String message = ""}) {
  Get.showSnackbar(
    GetSnackBar(
      duration: Duration(seconds: 3),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.black,
      titleText: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      messageText: Text(
        message,
        style: TextStyle(color: Colors.white),
      ),
      icon: Icon(
        Icons.error_outline,
        color: Colors.white,
      ),
    ),
  );
}

void showErrorSnackBar({required String title, String message = ""}) {
  Get.showSnackbar(
    GetSnackBar(
      duration: Duration(seconds: 3),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      titleText: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      messageText: Text(
        message,
        style: TextStyle(color: Colors.white),
      ),
      icon: Icon(Icons.error_outline),
    ),
  );
}

void showSuccessSnackBar(
    {required String title,
    String message = "",
    SnackPosition position = SnackPosition.BOTTOM}) {
  Get.showSnackbar(
    GetSnackBar(
      duration: Duration(seconds: 3),
      snackPosition: position,
      backgroundColor: Colors.green[600]!,
      titleText: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      messageText: Text(
        message,
        style: TextStyle(color: Colors.white),
      ),
      icon: Icon(Icons.error_outline),
    ),
  );
}
