import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/data/repositories/weather_repository.dart';
import 'package:flutter_training/domain/models/weather.dart';
import 'package:flutter_training/domain/models/weather_area.dart';
import 'package:flutter_training/utils/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

part 'weather_forecast_use_case.g.dart';

@riverpod
WeatherForecastUseCase weatherForecastUseCase(Ref ref) {
  final weathereRepository = ref.watch(weatherRepositoryProvider);
  return WeatherForecastUseCase(weathereRepository);
}

class WeatherForecastUseCase {
  const WeatherForecastUseCase(this.weatherRepository);

  final WeatherRepository weatherRepository;

  Result<Weather, String> getWeather(WeatherArea area) {
    final result = weatherRepository.getWeather(
      date: area.date,
      area: area.city,
    );

    switch (result) {
      case Success<Weather, YumemiWeatherError> _:
        return Result.success(result.success);
      case final Error<Weather, YumemiWeatherError> value:
        final message = switch (value.error) {
          YumemiWeatherError.invalidParameter => 'Invalid Parameter',
          YumemiWeatherError.unknown => 'Unknown',
        };

        return Result.error(message);
      case final Error<Weather, Exception> value:
        return Result.error('Unknown Error: ${value.error}');
    }
  }
}
