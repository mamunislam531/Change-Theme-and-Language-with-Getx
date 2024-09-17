import 'package:flutter/material.dart';
import 'package:flutter_class/utills/language.dart';
import 'package:flutter_class/utills/theme.dart';
import 'package:flutter_class/views/screen/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightTheme,
      translations: AppLanguage(),
      locale: Locale("bn"),
      home: HomeScreen(),
    );
  }
}
