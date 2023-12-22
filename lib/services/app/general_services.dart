import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void showLoadingIndicator() {
  showDialog(
    context: Get.context!,
    builder: (context) {
      return CenterLoadingView();
    },
  );
}

void moveBack() {
  Get.back();
}

void removeLoadingIndicator() {
  Navigator.pop(Get.context!);
}

void hideStatusBar() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
}

void removeDialog() {
  Navigator.pop(Get.context!);
}

void closeKeyboard() {
  FocusManager.instance.primaryFocus!.unfocus();
}

Future<void> emptyFuture() async {}

class CenterLoadingView extends StatelessWidget {
  const CenterLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.green,
      ),
    );
  }
}
