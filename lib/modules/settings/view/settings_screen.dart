import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hive/hive.dart';
import 'package:nature_app/models/settings/settings.dart';
import 'package:nature_app/modules/settings/controller/settings_screen_controller.dart';


class SettingsScreen extends StatelessWidget {

  final SettingsScreenController settingsController = SettingsScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
        ),
      ),
      body: ListView(
        children: [
          // Profile section
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/mariam.jpg'),
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  'Mariam El-Sheikh',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          // Divider
          Divider(),
          // Settings section
          ValueListenableBuilder<Settings>(
            valueListenable: settingsController.settingsNotifier,
            builder: (context, settings, child) => Column(
              children: [
                // Dark mode toggle
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(

                    children: [
                      Icon(
                        Icons.dark_mode_outlined,
                      ),
                      SizedBox(width: 10.0,),
                      Text('Dark Mode',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),),
                      Spacer(),
                      FlutterSwitch(
                        value: settings.isDarkMode,
                        onToggle: (value) {
                          settingsController.updateTheme(value);
                        },
                      ),
                    ],
                  ),
                ),
                // Language dropdown
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.language,
                      ),
                      SizedBox(width: 10.0,),
                      Text('Language',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),),
                      Spacer(),
                      DropdownButton<String>(
                        value: settings.language.contains('en') ? 'en' : 'ar', // Ensure initial value
                        items: <String>['en', 'ar']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value == 'en' ? 'English' : 'Arabic'), // Display full names
                          );
                        }).toList(),
                        onChanged: (value) {
                          settingsController.updateLanguage(value!);
                        },
                      ),
                    ],
                  ),
                ),
                // Add more settings sections as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}



