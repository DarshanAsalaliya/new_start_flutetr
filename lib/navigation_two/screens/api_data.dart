import 'package:flutter/material.dart';
import 'package:new_start/navigation_two/api_service/api_service.dart';
import 'package:new_start/navigation_two/models/post_model.dart';

class ApiData extends StatefulWidget {
  ApiData({Key? key}) : super(key: key);

  @override
  State<ApiData> createState() => _ApiDataState();
}

class _ApiDataState extends State<ApiData> {
  final ApiService apiService = ApiService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post detail'),
      ),
      body: FutureBuilder<List<Post>>(
        future: apiService.getUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            final userList = snapshot.data!;
            return ListView.builder(
              itemCount: userList.length,
              itemBuilder: (context, index) {
                final user = userList[index];
                return ListTile(
                  title: Text(user.title),
                  subtitle: Text(user.body),
                );
              },
            );
          }
        },
      ),
    );
  }
}
