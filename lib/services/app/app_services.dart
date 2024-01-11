import 'package:nature_app/services/cloud_storage/cloud_connection.dart';
import 'package:nature_app/services/local_storage/local_database.dart';

class ApplicationServices {
  ApplicationServices._privateConstructor();

  static final ApplicationServices _instance =
      ApplicationServices._privateConstructor();

  static ApplicationServices get instance => _instance;

  Future<void> launch() async {
    await CloudConnection.instance.initConnection();
    await LocalDatabase.instance.initDatabase();
  }
}
