import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nature_app/config/device/device_dimenssions.dart';
import 'package:nature_app/modules/onboard/onBoarding_screen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    playAudio();
    super.initState();
  }

  void playAudio() async {
    final player = AudioPlayer();
    await player
        .play(AssetSource('audio/audio.mp3'))
        .whenComplete(() => navigateToNextPage());
  }

  void navigateToNextPage() {
    Timer(Duration(milliseconds: 2600), () {
      Get.to(() => onBoardingScreen(), transition: Transition.leftToRight);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: DeviceDimenssions.width,
          height: DeviceDimenssions.height,
          child: Center(
            child: Text("Splach Screen"),
          ),
        ),
      ),
    );
  }
}
