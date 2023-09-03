import 'dart:convert';
import 'package:new_start/models/post_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<Post>> getUsers() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((userJson) => Post.fromJson(userJson)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
