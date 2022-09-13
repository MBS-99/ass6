import 'package:ass6/main.dart';
import 'package:flutter/material.dart';

class Screen_One extends StatefulWidget {
  const Screen_One({super.key});

  @override
  State<Screen_One> createState() => _Screen_OneState();
}

class _Screen_OneState extends State<Screen_One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Screen 1",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hello From Screen 1",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: (() {
                setState(
                  () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MyApp();
                        },
                      ),
                    );
                  },
                );
              }),
              child: Text(
                "back to Home",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
