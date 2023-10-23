import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'features/screens/buddy/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

//  bottom app bar
//  notification margin
//  follow button and username in user account
//  available time and advantage
//  photo grid
//  buddy and user profile handling
//  spacing standards

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SelectionScreen()
      home: Home(),
    );
  }
}
