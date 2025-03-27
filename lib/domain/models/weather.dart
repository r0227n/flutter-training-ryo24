import 'package:flutter_training/ui/core/themes/weather_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

enum WeatherArea { tokyo }

@freezed
sealed class InputWeatherForecast with _$InputWeatherForecast {
  factory InputWeatherForecast({
    required WeatherArea area,
    required DateTime date,
  }) = _InputWeatherForecast;

  factory InputWeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$InputWeatherForecastFromJson(json);
}

@freezed
sealed class Weather with _$Weather {
  factory Weather({
    required WeatherSvg weatherCondition,
    required int maxTemperature,
    required int minTemperature,
    required DateTime date,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
