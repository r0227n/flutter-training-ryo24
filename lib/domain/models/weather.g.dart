// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InputWeatherForecast _$InputWeatherForecastFromJson(
  Map<String, dynamic> json,
) => _InputWeatherForecast(
  area: $enumDecode(_$WeatherAreaEnumMap, json['area']),
  date: DateTime.parse(json['date'] as String),
);

Map<String, dynamic> _$InputWeatherForecastToJson(
  _InputWeatherForecast instance,
) => <String, dynamic>{
  'area': _$WeatherAreaEnumMap[instance.area]!,
  'date': instance.date.toIso8601String(),
};

const _$WeatherAreaEnumMap = {WeatherArea.tokyo: 'tokyo'};

_Weather _$WeatherFromJson(Map<String, dynamic> json) => _Weather(
  weatherCondition: $enumDecode(_$WeatherSvgEnumMap, json['weather_condition']),
  maxTemperature: (json['max_temperature'] as num).toInt(),
  minTemperature: (json['min_temperature'] as num).toInt(),
  date: DateTime.parse(json['date'] as String),
);

Map<String, dynamic> _$WeatherToJson(_Weather instance) => <String, dynamic>{
  'weather_condition': _$WeatherSvgEnumMap[instance.weatherCondition]!,
  'max_temperature': instance.maxTemperature,
  'min_temperature': instance.minTemperature,
  'date': instance.date.toIso8601String(),
};

const _$WeatherSvgEnumMap = {
  WeatherSvg.cloudy: 'cloudy',
  WeatherSvg.rainy: 'rainy',
  WeatherSvg.sunny: 'sunny',
};
