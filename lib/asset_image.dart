import 'package:flutter/material.dart';


class AssetImageDemo extends StatelessWidget {
  const AssetImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asset Image Demo"),
      ),
      body: Image.asset('assets/images/1.png',
      height: 30,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.fill,),
    );
  }
}