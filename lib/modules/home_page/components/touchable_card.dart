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
      this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        width: DeviceDimenssions.width * .8,
        height: DeviceDimenssions.height * .2,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splash_back.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12), color: color),
        child: Stack(
          children: [
            Center(
              child: Positioned(
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                top: 16,
                left: 16,
              ),
            ),

            Positioned(
              child: Text(
                subtutle,
                style: TextStyle(fontSize: 18, color: Colors.black),
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
