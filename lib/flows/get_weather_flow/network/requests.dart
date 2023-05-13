import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'requests.g.dart';

@RestApi()
abstract class ExampleClient {
  factory ExampleClient(Dio dio, {String? baseUrl}) = _ExampleClient;

  // @GET('/geo/1.0/direct?q={cityName}&limit={limit}&appid={appid}')
  // Future<List<CityNameResponseEntity>> getCityNameMatches(
  //     {@Path('cityName') required String name,
  //     @Path('limit') int limit = 2,
  //     @Path("appid") String appId = ''});

}
