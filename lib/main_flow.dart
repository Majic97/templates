import 'package:blog_test_app/environment/dio/dio_client.dart';
import 'package:blog_test_app/flows/get_weather_flow/get_wather_flow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainFlow {
  MainFlow() {
    init();
  }

  void init() {
    Get.put<DioProvider>(DioProviderBase());
    Get.put<ExampleFlow>(ExampleFlow());

    exampleFlow = Get.find<ExampleFlow>();
  }

  late ExampleFlow exampleFlow;

  Widget getInitPage() {
    return Get.find<ExampleFlow>().getInitPage();
  }

  void run() {
    Get.find<ExampleFlow>().run();
  }
}
