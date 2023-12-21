import 'package:mongo_dart/mongo_dart.dart';

class CloudConnection {
  final String _database_name = "nature_db";
  late String _collection_users = "users";
  late Db _db;
  String _connectionURI =
      "mongodb+srv://mohamadamgad09:01096482183@maincluster.uorzso5.mongodb.net/nature_db?retryWrites=true&w=majority";

  CloudConnection._privateConstructor();

  static final CloudConnection _instance =
      CloudConnection._privateConstructor();

  static CloudConnection get instance => _instance;

  String get databaseName => _database_name;

  Future<void> initConnection() async {
    try {
      _db = await Db.create(_connectionURI);
      await _db.open();
      print('Mongo connected successfully ✅');
    } catch (e) {
      print('error while connecting to mongo database : $e');
    }
  }

  Db get getDbObject => _db;

  Future<void> checkConnectionStatusThenPerform(Function() operation) async {
    if (_db.isConnected) {
      await operation();
    } else {
      await _db.close();
      await _db.open();
      await operation();
    }
  }
}
