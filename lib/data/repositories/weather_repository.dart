import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_training/data/services/models/weather_api_model.dart';
import 'package:flutter_training/data/services/weather_data_service.dart';
import 'package:flutter_training/domain/models/weather.dart';
import 'package:flutter_training/domain/models/weather_area.dart';
import 'package:flutter_training/utils/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

part 'weather_repository.g.dart';

@riverpod
WeatherRepository weatherRepository(Ref ref) {
  final weatherDataService = ref.watch(weatherDataServiceProvider);
  return WeatherRepository(weatherDataService);
}

class WeatherRepository {
  const WeatherRepository(this.weatherDataService);

  final WeatherDataService weatherDataService;

  Result<Weather, YumemiWeatherError> getWeather({
    required DateTime date,
    WeatherCity area = WeatherCity.tokyo,
  }) {
    try {
      final model = WeatherApiModel(area: area, date: date);

      final result = weatherDataService.getWeather(model);
      return Result.success(result);
    } on YumemiWeatherError catch (e) {
      return Result.error(e);
    }
  }
}
