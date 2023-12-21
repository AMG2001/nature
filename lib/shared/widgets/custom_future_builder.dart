import 'package:flutter/material.dart';

class CustomFutureBuilder extends StatelessWidget {
  late Future<dynamic> future;
  late Widget viewWhenLoaded;
  CustomFutureBuilder(
      {super.key, required this.future, required this.viewWhenLoaded});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return viewWhenLoaded;
        } else {
          return CircularProgressIndicator(
            color: Colors.green,
          );
        }
      },
    );
  }
}
