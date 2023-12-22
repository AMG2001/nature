import 'package:mongo_dart/mongo_dart.dart';
import 'package:nature_app/models/users/user_data_model.dart';
import 'package:nature_app/services/app/general_services.dart';
import 'package:nature_app/services/cloud_storage/cloud_connection.dart';
import 'package:nature_app/shared/maps_keys.dart';
import 'package:nature_app/shared/widgets/custom_snack_bar.dart';

class CloudServices {
  CloudServices._privateConstructor();

  static final CloudServices _instance = CloudServices._privateConstructor();

  static CloudServices get instance => _instance;

  Future<void> registerUser({required UserDataModel userDataModel}) async {
    showLoadingIndicator();
    await searchIfExist(
            email: userDataModel.email, password: userDataModel.password)
        .then((isExist) async {
      if (isExist) {
        removeLoadingIndicator();
        showErrorSnackBar(
            title: "Email is Already Exist !!",
            message: "You can use another email or directly login .");
      } else {
        await CloudConnection.instance.getDbObject
            .collection(MapsKeys.users_collection_name)
            .insert(userDataModel.toMap());
        // TODO insert data into local database .
        removeLoadingIndicator();
      }
    });
  }

  Future<Map<String, dynamic>> login(
      {required String email, required String password}) async {
    return await CloudConnection.instance.getDbObject
        .collection(MapsKeys.users_collection_name)
        .find(where
            .eq(MapsKeys.email_key, email)
            .eq(MapsKeys.password_key, password))
        .first;
  }

  Future<bool> searchIfExist(
      {required String email, required String password}) async {
    int numberOfResults = await CloudConnection.instance.getDbObject
        .collection(MapsKeys.users_collection_name)
        .find(where
            .eq(MapsKeys.email_key, email)
            .eq(MapsKeys.password_key, password))
        .length;
    if (numberOfResults == 0)
      return false;
    else
      return true;
  }
}
