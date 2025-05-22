import 'package:flutter/material.dart';
import 'package:flutter_b18/providers/user.dart';
import 'package:provider/provider.dart';

class ScreenBView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
      ),
      body: Column(
        children: [
          Text(
            user.getName().toString(),
            style: TextStyle(fontSize: 30),
          ),
          Text(
            user.getEmail().toString(),
            style: TextStyle(fontSize: 30),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go back to Screen A")),
          ),
        ],
      ),
    );
  }
}
