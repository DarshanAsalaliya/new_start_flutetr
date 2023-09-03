import 'package:flutter/material.dart';
import 'package:new_start/navigation_two/api_service/api_service.dart';
import 'package:new_start/navigation_two/screens/api_data.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ApiService apiService = ApiService();
  TextEditingController userId = TextEditingController();
  bool _isLoad = false;

  Future<bool> login() async {
    if (userId.text.isNotEmpty) {
      bool result = await apiService.authUser(userId.text.trim());

      return result;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: userId,
              decoration: InputDecoration(hintText: 'Enter User id'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: _isLoad
                    ? null
                    : () async {
                        setState(() {
                          _isLoad = true;
                        });
                        bool result = await login();
                        setState(() {
                          _isLoad = false;
                          if (result) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ApiData()));
                          }
                        });
                      },
                child: _isLoad
                    ? Center(child: CircularProgressIndicator())
                    : Text('Login'))
          ],
        ),
      ),
    );
  }
}
