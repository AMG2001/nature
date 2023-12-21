import 'package:flutter/material.dart';

class MoreInfoWidget extends StatelessWidget {
  const MoreInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 8,
        ),
        InkWell(
          child: Text(
            'for more info.....',
            style: TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
