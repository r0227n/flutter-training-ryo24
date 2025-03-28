import 'package:flutter_training/domain/models/weather_area.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_api_model.freezed.dart';
part 'weather_api_model.g.dart';

@freezed
sealed class WeatherApiModel with _$WeatherApiModel {
  factory WeatherApiModel({required WeatherCity area, required DateTime date}) =
      _WeatherApiModel;

  factory WeatherApiModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherApiModelFromJson(json);
}
