import 'package:flutter/material.dart';
import 'package:nature_app/modules/home_page/components/touchable_card.dart';
import 'package:nature_app/modules/images/images_screen.dart';
import 'package:nature_app/modules/podcasts/podcasts_screen.dart';
import 'package:nature_app/modules/settings/view/settings_screen.dart';
import 'package:nature_app/modules/videos/videos_screen.dart';
import 'package:nature_app/shared/components/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            tooltip: 'Settings',
            onPressed: () {
              navigateTo(context, SettingsScreen());
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
        child: ListView(
          children: [
            Text(
              "Have a look at the beauty of nature!!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            TouchableCard(
              title: 'Images',
              subtutle: '',
              onTap: () {
                navigateTo(context, ImagesScreen());
              },
            ),
            TouchableCard(
              title: 'Podcast',
              subtutle: '',
              onTap: () {
                navigateTo(context, PodcastsScreen());
              },
            ),
            TouchableCard(
              title: 'Videos',
              subtutle: '',
              onTap: () {
                navigateTo(context, VideosScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
