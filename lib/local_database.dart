import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalDatabase {
  static final LocalDatabase _instance = LocalDatabase._internal();

  factory LocalDatabase() => _instance;

  LocalDatabase._internal();

  late Box _dataBox;

  Future<void> initDatabase() async {
    await Hive.initFlutter(); // Initialize Hive
    _dataBox = await Hive.openBox('local_data');
  }

  Future<void> setLoggedState(bool isLoggedIn) async {
    await _dataBox.put('isLoggedIn', isLoggedIn);
  }

  bool get isLoggedIn {
    return _dataBox.get('isLoggedIn', defaultValue: false);
  }

  Future<void> setFirstName(String firstName) async {
    await _dataBox.put('firstName', firstName);
  }

  String get firstName {
    return _dataBox.get('firstName', defaultValue: '');
  }

  Future<void> setLastName(String lastName) async {
    await _dataBox.put('lastName', lastName);
  }

  String get lastName {
    return _dataBox.get('lastName', defaultValue: '');
  }

  Future<void> setEmail(String email) async {
    await _dataBox.put('email', email);
  }

  String get email {
    return _dataBox.get('email', defaultValue: '');
  }

  Future<void> setPassword(String password) async {
    await _dataBox.put('password', password);
  }

  String get password {
    return _dataBox.get('password', defaultValue: '');
  }




}