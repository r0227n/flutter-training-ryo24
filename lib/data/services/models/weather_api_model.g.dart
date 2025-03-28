// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherApiModel _$WeatherApiModelFromJson(Map<String, dynamic> json) =>
    _WeatherApiModel(
      area: $enumDecode(_$WeatherCityEnumMap, json['area']),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$WeatherApiModelToJson(_WeatherApiModel instance) =>
    <String, dynamic>{
      'area': _$WeatherCityEnumMap[instance.area]!,
      'date': instance.date.toIso8601String(),
    };

const _$WeatherCityEnumMap = {WeatherCity.tokyo: 'tokyo'};
