import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/data/services/models/weather_api_model.dart';
import 'package:flutter_training/domain/models/weather.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

part 'weather_data_service.g.dart';

@riverpod
WeatherDataService weatherDataService(Ref ref) {
  final weather = YumemiWeather();
  return WeatherDataService(weather);
}

class WeatherDataService {
  const WeatherDataService(this.weather);

  final YumemiWeather weather;

  Weather getWeather(WeatherApiModel value) {
    final weatherCondition = weather.fetchWeather(jsonEncode(value.toJson()));
    final json = jsonDecode(weatherCondition) as Map<String, dynamic>;
    return Weather.fromJson(json);
  }
}
