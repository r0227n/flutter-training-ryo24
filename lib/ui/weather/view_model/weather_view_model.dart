import 'package:flutter_training/domain/models/weather.dart';
import 'package:flutter_training/domain/models/weather_area.dart';
import 'package:flutter_training/domain/use_case/weather/weather_forecast_use_case.dart';
import 'package:flutter_training/utils/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_view_model.g.dart';

@riverpod
class WeatherViewModel extends _$WeatherViewModel {
  @override
  Weather? build() {
    return null;
  }

  void updateWeather({WeatherCity city = WeatherCity.tokyo, DateTime? date}) {
    final area = WeatherArea(date: date ?? DateTime.now(), city: city);

    final weatherCondition = ref
        .read(weatherForecastUseCaseProvider)
        .getWeather(area);

    switch (weatherCondition) {
      case Success<Weather, String>():
        state = weatherCondition.success;
      case Error<Weather, String>():
        throw Exception(weatherCondition.error);
    }
  }
}
