import 'package:blog_test_app/themes/theme.dart';
import 'package:blog_test_app/main_flow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'environment/translations/translation_client.dart';

void main() {
  Get.put(MainFlow());

  runApp(GetMaterialApp(
    translations: TranslationClient(),
    locale: Get.deviceLocale,
    theme: appTheme,
    fallbackLocale: const Locale("en", "US"),
    home: Get.find<MainFlow>().getInitPage(),
  ));
}
