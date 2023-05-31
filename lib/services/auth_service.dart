import 'dart:convert';

import 'package:shamo_apps/models/user.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'http://shamo-backend.test/api';

  Future<User> = register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async{
    Uri url = baseUrl+'/register';
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name' : name,
      'username': username,
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    if(response.statusCode == 200){
      var data = jsonDecode(response.body)['data'];
      User user = User.fromJson(data['user']);
      user.token = 'Bearer '+ data['access_token'];

      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }
}
