import 'package:dio/dio.dart';
import '../model/weather_model_2.dart';

class WeatherDio{
  final dio = Dio();
  Future<Weather> getHttp({required String loc}) async{
    final response = await dio.get('https://api.weatherapi.com/v1/forecast.json',
        queryParameters: {
          'key' : 'a1d7ac9beed34c9b800131501243003',
          'q' : loc,
          'aqi' : 'no',
          'days' : 3,
        });
    Weather weather  = Weather.fromJson(response.data);
    print(weather.current.tempC);
    return weather;
  }
}