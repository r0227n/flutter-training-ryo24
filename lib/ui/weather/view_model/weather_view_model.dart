import 'package:flutter_training/domain/models/weather.dart';
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

  void updateWeather({WeatherArea area = WeatherArea.tokyo, DateTime? date}) {
    final input = InputWeatherForecast(
      area: area,
      date: date ?? DateTime.now(),
    );

    final weatherCondition = ref
        .read(weatherForecastUseCaseProvider)
        .getWeather(input);

    switch (weatherCondition) {
      case Success<Weather, Exception>():
        state = weatherCondition.success;
      case Error<Weather, Exception>():
        throw weatherCondition.error;
    }
  }
}
