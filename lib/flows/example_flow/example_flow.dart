import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../environment/dio/dio_client.dart';
import 'network/requests.dart';
import 'screen/model.dart';
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
