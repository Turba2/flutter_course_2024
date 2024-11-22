import 'package:practice_1/features/core/data/debug/weather_repository_debug.dart';
import 'package:practice_1/features/core/data/wb/wb_api.dart';
import 'package:practice_1/features/core/data/wb/weather_repository_wb.dart';
import 'package:practice_1/features/core/presentation/app.dart';

const String version = '0.0.1';
const String url = 'https://api.weatherbit.io/v2.0/forecast/daily';
const String apiKey = '4631e4bfc48d4b8c8bbac988d049257a';

void main(List<String> arguments) {
  var app = App(WeatherRepositoryDebug());

  app.run();
}
