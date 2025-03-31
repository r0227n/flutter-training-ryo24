import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/data/services/models/weather_api_model.dart';
import 'package:flutter_training/data/services/weather_data_service.dart';
import 'package:flutter_training/domain/models/weather_area.dart';
import 'package:flutter_training/ui/core/themes/weather_svg.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

@GenerateNiceMocks([MockSpec<YumemiWeather>()])
import 'weather_data_service_test.mocks.dart';

void main() {
  group(WeatherDataService, () {
    late final MockYumemiWeather mockYumemiWeather;
    late final WeatherDataService weatherDataService;

    setUp(() {
      mockYumemiWeather = MockYumemiWeather();
      weatherDataService = WeatherDataService(mockYumemiWeather);
    });

    test('getWeather', () {
      final mockDate = DateTime.parse('2020-04-01T12:00:00+09:00');
      final weatherApiModel = WeatherApiModel(
        area: WeatherCity.tokyo,
        date: mockDate,
      );

      final mockResponse = {
        'weather_condition': 'sunny',
        'max_temperature': 25,
        'min_temperature': 15,
        'date': '2020-04-01T12:00:00+09:00',
      };

      when(
        mockYumemiWeather.fetchWeather(any),
      ).thenReturn(jsonEncode(mockResponse));

      final result = weatherDataService.getWeather(weatherApiModel);

      expect(result.weatherCondition, WeatherSvg.sunny);
      expect(result.maxTemperature, 25);
      expect(result.minTemperature, 15);
      expect(result.date, mockDate);

      verify(mockYumemiWeather.fetchWeather(any)).called(1);
    });
  });
}
