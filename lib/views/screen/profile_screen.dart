import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_class/controller/getx_controller/profile.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        title: Text("profile".tr,),
        actions: [
          Obx(() => Switch(
              value: controller.isLightTheme.value,
              onChanged: (value) {
                controller.changeThemeFun();
              }))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "profile".tr,
              style: TextStyle(color: Colors.black),
            ),
            Obx(() => DropdownButton(
                  hint: Text(
                      'Please choose a location'), // Not necessary for Option 1
                  value: "${controller.selectedLanguage.value}",
                  onChanged: (newValue) {
                    controller.selectedLanguage.value = newValue!;
                    controller.changeLanguageFun();
                  },
                  items: controller.languageList.map((location) {
                    return DropdownMenuItem(
                      child: new Text(location),
                      value: location,
                    );
                  }).toList(),
                ))
          ],
        ),
      ),
    );
  }
}
