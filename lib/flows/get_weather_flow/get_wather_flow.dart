import 'package:blog_test_app/flows/get_weather_flow/network/requests.dart';
import 'package:blog_test_app/flows/get_weather_flow/screen/model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../environment/dio/dio_client.dart';
import 'screen/view.dart';

class ExampleFlow {
  ExampleFlow() {
    init();
  }
  late ExampleClient client;

  late ExampleModel exampleModel;

  void init() {
    Get.put(ExampleModel());

    exampleModel = Get.find<ExampleModel>();
    client = ExampleClient(Get.find<DioProvider>().dio, baseUrl: Get.find<DioProvider>().baseUrl);
  }

  void toOD() {}

  Widget getInitPage() {
    return ExampleView(
      toDo: toOD,
    );
  }

  void run() {
    Get.to(ExampleView(
      toDo: toOD,
    ));
  }
}
