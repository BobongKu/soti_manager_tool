import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  static const String baseUrl = 'http://localhost:8080/api';
  static const String loginUrl = '/auth/login';
  static const String logoutUrl = '/auth/logout';
  static late SharedPreferences prefs;

  static login(String id, String password) async {
    final response = await post(
      Uri.parse('$baseUrl$loginUrl'),
      body: {
        'email': id,
        'password': password,
      },
    );
    if (response.body.contains('200')) {
      prefs = await SharedPreferences.getInstance();
      prefs.setString('Session', sessionParse(response.headers));
      return true;
    } else {
      return false;
    }
  }

  static logout() async {
    await get(Uri.parse('$baseUrl$logoutUrl'));
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('Session');
  }

  static sessionParse(Map<String, String> headers) {
    final String session = headers.toString().split(' ')[1];
    return session;
  }

  static header() async {
    prefs = await SharedPreferences.getInstance();
    final String? session = prefs.getString('Session');
    final Map<String, String> header = {'Cookie': session.toString()};
    return header;
  }

  static test() async {
    final response = await post(
        Uri.parse('http://localhost:8080/api/promotional/'),
        body: {'title': 'test', 'content': 'test'},
        headers: await header());
    if (response.body.contains('200')) {
      return true;
    } else {
      return false;
    }
  }
}
