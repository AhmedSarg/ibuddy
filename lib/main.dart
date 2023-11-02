import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'core/utils/app_colors.dart';
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
//  language icons
//  edit and add in profile details

MaterialColor primarySwatch = const MaterialColor(0xFF1D65B1, <int, Color>{
  50: AppColors.white,
  100: AppColors.nearlyWhite,
  200: AppColors.black,
  500: AppColors.primary,
  600: AppColors.secondary,
  700: AppColors.grey,
});

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SelectionScreen()
      home: Home(),
      theme: ThemeData(primarySwatch: primarySwatch),
    );
  }
}
