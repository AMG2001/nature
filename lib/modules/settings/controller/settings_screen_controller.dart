import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:nature_app/models/settings/settings.dart';
import 'package:nature_app/services/local_storage/local_database.dart';

class SettingsScreenController with ChangeNotifier{
  late Settings _settings;

  Settings get settings => _settings;
  ValueNotifier<Settings> _settingsNotifier = ValueNotifier(Settings());
  get settingsNotifier => _settingsNotifier;

  Future<void> loadSettings() async {
    try {
      final localDatabase = LocalDatabase.instance;
      await localDatabase.initDatabase(); // Ensure Hive is initialized
      final settings = await localDatabase.getSettings();
      if (settings != null) {
        _settings = settings;
      } else {
        _settings = Settings(); // Create default settings
        await saveSettings(); // Save initial settings
      }
      notifyListeners();
    } catch (error) {
      // Handle any errors during loading
      print('Error loading settings: $error');
    }
  }
  Future<void> updateTheme(bool isDarkMode) async {
    try {
      _settingsNotifier.value = _settingsNotifier.value.copyWith(isDarkMode: isDarkMode);
      await saveSettings();
    } catch (error) {
      print('Error updating theme: $error');
    }
  }

  Future<void> updateLanguage(String language) async {
    try {
      _settings = _settings.copyWith(language: language);
      notifyListeners();
      await saveSettings();
    } catch (error) {
      print('Error updating language: $error');
    }
  }

  Future<void> saveSettings() async {
    try {
      await LocalDatabase.instance.setSettings(_settings);
    } catch (error) {
      print('Error saving settings: $error');
    }
  }
}

