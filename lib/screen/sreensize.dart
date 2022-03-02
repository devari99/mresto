import 'package:flutter/material.dart';

class ScreenSize{

  static double getWidth({required BuildContext context}){
    return MediaQuery.of(context).size.width;
  }
  static double getHeight({required BuildContext context}){
    return MediaQuery.of(context).size.height;
  }

  static const double MICROSOFT_SURFACE3_TABLET_WIDTH = 1280.0;
  static const double MICROSOFT_SURFACE3_TABLET_HEIGHT = 1920.0;

  // ANDROID SCREEN SIZE
  static const double SMALL_PHONE_WIDTH = 320.0;
  static const double SMALL_PHONE_HEIGHT = 569.0;

  static const double SAM_SUNG_GALAXY_S8_PHONE_WIDTH = 360.0;
  static const double SAM_SUNG_GALAXY_S8_HEIGHT = 740.0;

  static const double SAM_SUNG_GALAXY_S20_WIDTH = 360.0;
  static const double SAM_SUNG_GALAXY_S20_HEIGHT = 800.0;

  static const double MEDIUM_PHONE_WIDTH = 411.0;
  static const double MEDIUM_PHONE_HEIGHT = 731.0;

  static const double SAM_SUNG_GALAXY_NOTE10_PLUS_WIDTH = 480.0;
  static const double SAM_SUNG_GALAXY_NOTE10_PLUS_HEIGHT = 1014.0;

  static const double PIXEL3_WIDTH = 540.0;
  static const double PIXEL3_HEIGHT = 1080.0;

  static const double NEXUS9_WIDTH = 768.0;
  static const double NEXUS9_HEIGHT = 1024.0;

  static const double LARGE_PHONE_WIDTH = 800.0;
  static const double LARGE_PHONE_HEIGHT = 1280.0;

  //ANDROID AVERAGE SIZE

  //SMALL SCREEN SIZE
  static const double ANDROID_SMALL_LESS_OR_EQUAL_SCREEN_SIZE_WIDTH = 540.0;
  //MEDIUM SCREEN SIZE
  static const double ANDROID_MEDIUM_GREATER_OR_EQUAL_SCREEN_SIZE_WIDTH = 540.0;
  static const double ANDROID_MEDIUM__LESS_OR_EQUAL_SCREEN_SIZE_WIDTH = 768.0;
  //LARGE SCREEN SIZE
  static const double ANDROID_LARGE_GREATER_OR_EQUAL_SCREEN_SIZE_WIDTH = 768.0;

  // IOS SCREEN SIZE
  static const double IPHONE_SE_WIDTH = 320.0;
  static const double IPHONE_SE_HEIGHT = 568.0;

  static const double IPHONE_11PRO_WIDTH = 375.0;
  static const double IPHONE_11PRO_HEIGHT = 812.0;

  static const double IPHONE_11_WIDTH = 414.0;
  static const double IPHONE_11_HEIGHT = 896.0;

  static const double IPHONE11_PRO_MAX_WIDTH = 414.0;
  static const double IPHONE11_PRO_MAX_HEIGHT = 896.0;

  static const double I_PAD_MINI_WIDTH = 768.0;
  static const double I_PAD_MINI_HEIGHT = 1024.0;

  static const double I_PAD_WIDTH = 768.0;
  static const double II_PAD_HEIGHT = 1024.0;

  static const double I_PAD_PRO_12_9INCH_WIDTH = 1024.0;
  static const double I_PAD_PRO_12_9INCH_HEIGHT = 1366.0;

  //IOS AVERAGE SIZE

  static const double IOS_SMALL_LESS_OR_EQUAL_SCREEN_SIZE_WIDTH = 420.0;
  //MEDIUM SCREEN SIZE
  static const double IOS_MEDIUM_GREATER_OR_EQUAL_SCREEN_SIZE_WIDTH = 540.0;
  static const double IOS_MEDIUM__LESS_OR_EQUAL_SCREEN_SIZE_WIDTH = 768.0;
  //LARGE SCREEN SIZE
  static const double IOS_LARGE_GREATER_OR_EQUAL_SCREEN_SIZE_WIDTH = 768.0;
}