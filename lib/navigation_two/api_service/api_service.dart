import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:new_start/navigation_two/models/post_model.dart';
import 'package:new_start/navigation_two/models/user_model.dart';

class ApiService {
  final String apiUrl = 'https://jsonplaceholder.typicode.com/posts';
  final String userUrl = 'https://jsonplaceholder.typicode.com/users';

  Future<List<Post>> getUsers() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((userJson) => Post.fromJson(userJson)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }

  Future<bool> authUser(String userid) async {
    final response = await http.get(Uri.parse(userUrl));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      final List<User> users =
          data.map((userJson) => User.fromJson(userJson)).toList();

      final List<User> authUser =
          users.where((element) => element.username == userid).toList();
      if (authUser.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } else {
      throw Exception('Failed to load users');
    }
  }
}
