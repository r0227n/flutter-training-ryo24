import 'package:flutter_training/ui/core/themes/weather_svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

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
