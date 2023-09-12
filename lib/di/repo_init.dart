import 'package:shared_preferences/shared_preferences.dart';

Future initializeRepoDependencies() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
}
