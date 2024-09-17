import 'package:flutter/material.dart';
import 'package:flutter_class/views/screen/map_screen.dart';
import 'package:flutter_class/views/screen/profile_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home_screen".tr),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(ProfileScreen());
                },
                child: Text("profile".tr)),
            ElevatedButton(
                onPressed: () {
                  Get.to(MapScreen());
                },
                child: Text("Map")),
          ],
        ),
      ),
    );
  }
}
