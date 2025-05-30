import 'package:flutter/material.dart';
import 'package:flutter_b18/asset_image.dart';
import 'package:flutter_b18/bottom_bar.dart';
import 'package:flutter_b18/dialog_box.dart';
import 'package:flutter_b18/grid_view_demo.dart';
import 'package:flutter_b18/list_view_demo.dart';
import 'package:flutter_b18/login.dart';
import 'package:flutter_b18/page_view.dart';
import 'package:flutter_b18/providers/user.dart';
import 'package:flutter_b18/screen_a.dart';
import 'package:flutter_b18/single_selection.dart';
import 'package:provider/provider.dart';
import 'bottom_sheet.dart';
import 'image_network.dart';
import 'multiple_selection.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenAView(),
    );
  }
}
