import 'package:hive_flutter/hive_flutter.dart';
import 'package:nature_app/models/users/user_data_model.dart';
import 'package:nature_app/shared/maps_keys.dart';

class LocalDatabase {
  LocalDatabase._privateConstructor();

  static final LocalDatabase _instance = LocalDatabase._privateConstructor();

  static LocalDatabase get instance => _instance;

  late Box _dataBox;
  String _key_dbName = 'local_data';
  String _key_loggedState = 'isLoggedIn';
  String _key_firstName = 'firstName';
  String _key_lastName = 'lastName';
  String _key_email = 'email';
  String _key_password = 'password';

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

  Future<void> setFirstName({required String firstName}) async {
    await _dataBox.put(_key_firstName, firstName);
  }

  String get firstName {
    return _dataBox.get(_key_firstName, defaultValue: '');
  }

  Future<void> setLastName({required String lastName}) async {
    await _dataBox.put(_key_lastName, lastName);
  }

  String get lastName {
    return _dataBox.get(_key_lastName, defaultValue: '');
  }

  Future<void> setEmail({required String email}) async {
    await _dataBox.put(_key_email, email);
  }

  Future<String?> getEmail() async {
    // Retrieve password from Hive or other storage
    return _dataBox.get(_key_email, defaultValue: '');
  }

  Future<void> setPassword({required String password}) async {
    await _dataBox.put(_key_password, password);
  }

  Future<String?> getPassword() async {
    // Retrieve password from Hive or other storage
    return _dataBox.get(_key_password, defaultValue: '');
  }

  Future<void> storeDataFromMap({required Map<String, dynamic> map}) async {
    await setEmail(email: map[MapsKeys.email_key]);
    await setPassword(password: map[MapsKeys.password_key]);
    await setFirstName(firstName: map[MapsKeys.first_name_key]);
    await setLastName(lastName: map[MapsKeys.last_name_key]);
  }

  Future<void> setAllData({required UserDataModel userDataModel}) async {
    await setEmail(email: userDataModel.email);
    await setPassword(password: userDataModel.password);
    await setFirstName(firstName: userDataModel.firstName);
    await setLastName(lastName: userDataModel.lastName);
  }
}
