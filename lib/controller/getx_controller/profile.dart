import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxBool isLightTheme = true.obs;
  RxString selectedLanguage = "BD".obs;
  RxList<String> languageList = <String>[
    "BD",
    "US",
    "India",
  ].obs;

  changeThemeFun() {
    isLightTheme.value = !isLightTheme.value;
    log("=================");
    log("==== ${isLightTheme.value}=============");
    log("=================");
    Get.changeTheme(!isLightTheme.value ? ThemeData.dark() : ThemeData.light());
  }

  changeLanguageFun() {
    String local = "en";
    switch (selectedLanguage.value) {
      case "BD":
        local = "bn";
        break;
      case "India":
        local = "hi";
        break;
      default:
        local = "en";
    }
    // if(selectedLanguage.value == "BD"){
    //   local = "bn";
    // }else if(selectedLanguage.value == "India"){
    //   local = "hi";
    // }else{
    //   local = "en";
    // }
    Get.updateLocale(Locale(local));
  }
}
