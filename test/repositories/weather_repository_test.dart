import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_training/data/repositories/weather_repository.dart';
import 'package:flutter_training/domain/models/weather.dart';
import 'package:flutter_training/domain/models/weather_area.dart';
import 'package:flutter_training/domain/use_case/weather/weather_forecast_use_case.dart';
import 'package:flutter_training/ui/core/themes/weather_svg.dart';
import 'package:flutter_training/utils/result.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

@GenerateNiceMocks([MockSpec<WeatherRepository>()])
import 'weather_repository_test.mocks.dart';

void main() {
  late WeatherForecastUseCase useCase;
  late MockWeatherRepository mockRepository;

  setUp(() {
    mockRepository = MockWeatherRepository();
    useCase = WeatherForecastUseCase(mockRepository);
  });

  group('getWeather', () {
    final testDate = DateTime.parse('2020-04-01T12:00:00+09:00');
    final testArea = WeatherArea(date: testDate);
    final testWeather = Weather(
      weatherCondition: WeatherSvg.sunny,
      maxTemperature: 25,
      minTemperature: 15,
      date: testDate,
    );

    test('sucess', () {
      provideDummy<Result<Weather, YumemiWeatherError>>(Success(testWeather));

      when(
        mockRepository.getWeather(date: testDate),
      ).thenReturn(Result.success(testWeather));

      final result = useCase.getWeather(testArea);

      expect(result, Result<Weather, String>.success(testWeather));
    });

    test('bad: invalidParameter', () {
      const invalidParameter = YumemiWeatherError.invalidParameter;
      provideDummy<Result<Weather, YumemiWeatherError>>(
        const Error(invalidParameter),
      );

      when(
        mockRepository.getWeather(date: testDate),
      ).thenReturn(const Result.error(invalidParameter));

      final result = useCase.getWeather(testArea);

      expect(result, const Result<Weather, String>.error('Invalid Parameter'));
    });

    test('bad: unknown', () {
      const unknown = YumemiWeatherError.unknown;
      provideDummy<Result<Weather, YumemiWeatherError>>(const Error(unknown));

      when(
        mockRepository.getWeather(date: testDate),
      ).thenReturn(const Result.error(unknown));

      final result = useCase.getWeather(testArea);

      expect(result, const Result<Weather, String>.error('Unknown'));
    });
  });
}
