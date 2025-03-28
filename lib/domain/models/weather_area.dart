import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_area.freezed.dart';

enum WeatherCity { tokyo }

@freezed
sealed class WeatherArea with _$WeatherArea {
  factory WeatherArea({
    required DateTime date,
    @Default(WeatherCity.tokyo) WeatherCity city,
  }) = _WeatherArea;

  factory WeatherArea.now({WeatherCity city = WeatherCity.tokyo}) {
    return WeatherArea(city: city, date: DateTime.now());
  }
}
