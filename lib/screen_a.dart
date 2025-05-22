import 'package:flutter/material.dart';
import 'package:flutter_b18/providers/user.dart';
import 'package:flutter_b18/screen_b.dart';
import 'package:provider/provider.dart';

class ScreenAView extends StatelessWidget {
  const ScreenAView({super.key});

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              user.setName('Ali');
              user.setEmail('ali@gmail.com');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScreenBView()));
            },
            child: Text("Go to Screen Screen B")),
      ),
    );
  }
}
