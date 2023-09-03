import 'package:flutter/material.dart';

class PracticeTwo extends StatefulWidget {
  PracticeTwo({Key? key}) : super(key: key);

  @override
  State<PracticeTwo> createState() => _PracticeTwoState();
}

class _PracticeTwoState extends State<PracticeTwo> {
  var name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(name);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.green, width: 12)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.green))),
            ),
            TextField(
              decoration: InputDecoration(
                  suffixText: 'dtaa',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.green))),
            ),
            TextField(
              controller: name,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.green[50],
                  labelText: 'dfdgdd',
                  hintText: 'dsdsdds',
                  suffixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.green))),
            ),
            ElevatedButton(
                onPressed: () {
                  print(name.text.toString());
                },
                child: Text('data'))
          ],
        ),
      ),
    );
  }
}
