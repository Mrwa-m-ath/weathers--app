import 'package:dio/dio.dart';

// class WeatherServer {
//   String Base_Url = 'http://api.weatherapi.com/v1';
//   String Key_Api = 'af5c346e89b449dcbee210756222012';
//
//   Future<WeatherMode> getWeather({required key}) async {
//     Uri uri = Uri.parse(
//         '$Base_Url/forecast.json?key=$Key_Api&q=$key&days=1&aqi=no&alerts=no');
//     http.Response response = await http.get(uri);
//     Map<String, dynamic> data = jsonDecode(response.body);
//     var JosnD = data['forecast']['forecastday'][0]['day'];
//
//     WeatherMode weather = WeatherMode.FomJe(data);
//     return weather;
//   }
//}

class MyDio {
  static Dio? dio;
  static initDio() {
    dio = Dio(BaseOptions(
        baseUrl: 'http://api.weatherapi.com/',
        receiveDataWhenStatusError: true));
  }

  static Future<Response> getDio(
      {required String path, Map<String, dynamic>? quare}) async {
    return await dio!.get(path, queryParameters: quare);
  }
}
