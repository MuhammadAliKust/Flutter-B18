import 'package:flutter/material.dart';
import 'package:flutter_b18/asset_image.dart';
import 'package:flutter_b18/login.dart';
import 'image_network.dart';

void main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
 return MaterialApp(
  home: LoginView(),
 );
  }
}