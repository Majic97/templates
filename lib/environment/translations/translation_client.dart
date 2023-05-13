import 'package:blog_test_app/environment/translations/get_weather_en.dart';
import 'package:blog_test_app/environment/translations/get_weather_ru.dart';
import 'package:get/route_manager.dart';

class TranslationClient extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en': {}, 'ru': {}};
}
