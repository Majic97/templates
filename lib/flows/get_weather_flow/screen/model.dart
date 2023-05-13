import 'package:mobx/mobx.dart';

part 'model.g.dart';

class ExampleModel = ExampleModelBase with _$GetWeatherModel;

abstract class ExampleModelBase with Store {}
