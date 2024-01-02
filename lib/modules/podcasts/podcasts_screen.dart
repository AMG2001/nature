import 'package:flutter/material.dart';

class PodcastsScreen extends StatelessWidget {
  const PodcastsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Podcasts'),
      ),
    );
  }
}
