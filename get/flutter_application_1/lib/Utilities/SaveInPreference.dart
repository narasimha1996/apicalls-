// ignore: unused_import
import 'package:flutter_application_1/Utilities/classimports.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SaveInPreference {
  // ignore: missing_return
  Future<String>getString(String strGetSaved) async {
    // ignore: unused_local_variable
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(strGetSaved);
  }
}
