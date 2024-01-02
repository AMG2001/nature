import 'package:flutter/material.dart';
import 'package:nature_app/config/device/device_dimenssions.dart';

class TouchableCard extends StatelessWidget {
  late String title, subtutle;
  late Function() onTap;
  late Color color;
  TouchableCard(
      {super.key,
      required this.title,
      required this.onTap,
      required this.subtutle,
      this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        width: DeviceDimenssions.width * .8,
        height: DeviceDimenssions.height * .2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: color),
        child: Stack(
          children: [
            Positioned(
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              top: 16,
              left: 16,
            ),
            Positioned(
              child: Text(
                subtutle,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              bottom: 16,
              left: 16,
            )
          ],
        ),
      ),
    );
  }
}
