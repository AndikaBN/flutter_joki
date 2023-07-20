import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefUtils {
  static saveNama(String nama) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('nama', nama);
  }

  static readNama() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('nama');
  }

  static saveEmail(String email) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('email', email);
  }

  static readEmail() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('email') ?? '';
  }

  static savePassword(String pass) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('password', pass);
  }

  static readPassword() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('password') ?? '';
  }
}
