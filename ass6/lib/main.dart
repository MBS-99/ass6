// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:ass6/screen1.dart';
import 'package:ass6/screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Home Page",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (() {
                setState(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Screen_One();
                        },
                      ),
                    );
                  },
                );
              }),
              child: Text(
                "go to screen 1",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: (() {
                setState(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Screen_Two();
                        },
                      ),
                    );
                  },
                );
              }),
              child: Text(
                "go to screen 2",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
