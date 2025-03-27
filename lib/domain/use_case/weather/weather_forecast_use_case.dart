import 'dart:convert';
import 'package:flutter_training/domain/models/weather.dart';
import 'package:flutter_training/utils/result.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherForecastUseCase {
  final _yumemiWeather = YumemiWeather();

  Result<Weather, Exception> getWeather(InputWeatherForecast value) {
    try {
      final weatherCondition = _yumemiWeather.fetchWeather(
        jsonEncode(value.toJson()),
      );
      final json = jsonDecode(weatherCondition) as Map<String, dynamic>;
      return Result.success(Weather.fromJson(json));
    } on YumemiWeatherError catch (e) {
      final message = switch (e) {
        YumemiWeatherError.invalidParameter => 'Invalid Parameter',
        YumemiWeatherError.unknown => 'Unknown',
      };

      return Result.error(Exception(message));
    } on Exception catch (e) {
      return Result.error(Exception('Unexpected Error: $e'));
    }
  }
}
