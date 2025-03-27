import 'package:flutter_training/utils/result.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherForecastUseCase {
  final _yumemiWeather = YumemiWeather();

  Result<String> getWeather({String area = 'tokyo'}) {
    try {
      final weatherCondition = _yumemiWeather.fetchThrowsWeather(area);
      return Result.success(weatherCondition);
    } on YumemiWeatherError catch (e) {
      return Result.error(switch (e) {
        YumemiWeatherError.invalidParameter => 'Invalid Parameter',
        YumemiWeatherError.unknown => 'Unknown',
      });
    } on Exception catch (e) {
      return Result.error('Unexpected Error: $e');
    }
  }
}
