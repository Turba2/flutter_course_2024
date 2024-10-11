class WBWeather {
  final double temp;
  final String type;

  const WBWeather(this.temp, this.type);

  @override
  String toString() {
    return 'OSMWeather{temp: $temp, type: $type}';
  }
}