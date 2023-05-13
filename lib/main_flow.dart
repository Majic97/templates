
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'environment/dio/dio_client.dart';
import 'flows/example_flow/example_flow.dart';

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
