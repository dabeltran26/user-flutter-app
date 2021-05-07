import 'dart:convert';
import 'package:http/http.dart' as http;

class UserService {
  String _url = 'jsonplaceholder.typicode.com';

  Future<List<dynamic>> getUsers() async {
    final url = Uri.https(_url, 'users');
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    return decodedData;
  }
}