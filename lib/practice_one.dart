// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PracticeOne extends StatefulWidget {
  PracticeOne({Key? key}) : super(key: key);

  @override
  State<PracticeOne> createState() => _PracticeOneState();
}

class _PracticeOneState extends State<PracticeOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Image(
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height / 3,
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg')),
              Positioned(
                  bottom: -60,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 80,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=388&q=80'),
                  ))
            ],
          ),
          SizedBox(
            height: 60,
          ),
          ListTile(
            title: Center(child: Text('Darshan Asalaliya')),
            subtitle: Center(child: Text('This is my profile')),
          ),
          ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.email),
              label: Text('Hire me')),
          ListTile(
            title: Center(child: Text('Darshan Asalaliya')),
            subtitle: Center(
                child: Text(
              'This is my profile This is my profileThis is my profileThis is my profileThis is my profileThis is my profile',
              textAlign: TextAlign.center,
            )),
          ),
        ],
      ),
    );
  }
}
