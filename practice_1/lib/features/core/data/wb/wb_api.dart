import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:practice_1/features/core/data/wb/models/wb_weather.dart';

class WbApi {
  final String url;
  final String apiKey;

  WbApi(this.url, this.apiKey);

  Future<WBWeather> getWeather(String city) async {
    var response = await http.get(Uri.parse('$url/data/2.5/weather?q=$city&appid=$apiKey'));
    var rJson = jsonDecode(response.body);

    return WBWeather(rJson['main']['temp'], rJson['weather'][0]['main']);
  }
}