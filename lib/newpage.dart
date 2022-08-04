import 'package:flutter/material.dart';

class newpage extends StatelessWidget {
  String username;
  newpage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "HELLO",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
          )),
          Center(
              child: Text(
            username,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ))
        ],
      ),
    );
  }
}
