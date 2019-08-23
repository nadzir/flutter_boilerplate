import 'package:shared_preferences/shared_preferences.dart';

class StatusPref{
  final String _firstLaunch = "firstLaunch";

  void setFirstLaunch(bool val) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(_firstLaunch, val);
  }

  void getFirstLaunch() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.getBool(_firstLaunch);
  }
}
