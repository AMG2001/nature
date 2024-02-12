import 'package:hive_flutter/hive_flutter.dart';
import 'package:nature_app/models/users/user_data_model.dart';
import 'package:nature_app/models/settings/settings.dart';
import 'package:nature_app/shared/maps_keys.dart';

class LocalDatabase {
  LocalDatabase._privateConstructor();

  static final LocalDatabase _instance = LocalDatabase._privateConstructor();
  static const String _key_settings = 'settings';

  static LocalDatabase get instance => _instance;

  late Box _dataBox;
  String _key_dbName = 'local_data';
  String _key_loggedState = 'isLoggedIn';



  Future<void> initDatabase() async {
    await Hive.initFlutter(); // Initialize Hive
    _dataBox = await Hive.openBox(_key_dbName);

  }

  Future<void> setLoggedState({required bool isLoggedIn}) async {
    await _dataBox.put(_key_loggedState, isLoggedIn);
  }

  bool get isLoggedIn {
    return _dataBox.get(_key_loggedState, defaultValue: false);
  }




  Future<void> setSettings(Settings settings) async {
    await _dataBox.put(_key_settings, settings);
  }

  Future<Settings?> getSettings() async {
    return _dataBox.get(_key_settings);
  }
}
