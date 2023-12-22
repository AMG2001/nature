import 'package:nature_app/shared/maps_keys.dart';

class UserDataModel {
  late String firstName;
  late String lastName;
  late String fullName;
  late String email;
  late String password;

  UserDataModel(
      {required this.firstName,
      required this.lastName,
      required this.fullName,
      required this.email,
      required this.password});

  UserDataModel.fromMap(Map<String, dynamic> map) {
    this.firstName = map[MapsKeys.first_name_key];
    this.lastName = map[MapsKeys.last_name_key];
    this.fullName = map[MapsKeys.full_name_key];
    this.email = map[MapsKeys.email_key];
    this.password = map[MapsKeys.password_key];
  }

  Map<String, dynamic> toMap() {
    return {
      MapsKeys.first_name_key: this.firstName,
      MapsKeys.last_name_key: this.lastName,
      MapsKeys.full_name_key: this.fullName,
      MapsKeys.email_key: this.email,
      MapsKeys.password_key: this.password
    };
  }
}
