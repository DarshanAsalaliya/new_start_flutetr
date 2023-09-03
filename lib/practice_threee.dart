import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PracticeThree extends StatefulWidget {
  PracticeThree({Key? key}) : super(key: key);

  @override
  State<PracticeThree> createState() => _PracticeThreeState();
}

class _PracticeThreeState extends State<PracticeThree> {
  List<dynamic> user = [];
  List arr = ['dfdf', 'dfdfd'];

  void fetchUser() async {
    print('fetch start');
    const url = 'https://randomuser.me/api/?results=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    print('dfdfdfd $response ');
    final json = jsonDecode(response.body);
    setState(() {
      user = json['results'];
    });
    print('fetch complete $json');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Api call'),
      ),
      // body: ListView(
      //   children: [
      //     Container(
      //       height: 100,
      //       decoration: BoxDecoration(color: Colors.green[400]),
      //       child: Text('data'),
      //     )
      //   ],
      // ),
      body: ListView.builder(
          itemCount: arr.length,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              decoration: BoxDecoration(color: Colors.green[400]),
              child: Text('data'),
            );
          }),
      floatingActionButton: FloatingActionButton(onPressed: fetchUser),
    );
  }
}
