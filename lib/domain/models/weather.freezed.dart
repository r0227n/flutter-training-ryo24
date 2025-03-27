// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputWeatherForecast {

 WeatherArea get area; DateTime get date;
/// Create a copy of InputWeatherForecast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InputWeatherForecastCopyWith<InputWeatherForecast> get copyWith => _$InputWeatherForecastCopyWithImpl<InputWeatherForecast>(this as InputWeatherForecast, _$identity);

  /// Serializes this InputWeatherForecast to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputWeatherForecast&&(identical(other.area, area) || other.area == area)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,area,date);

@override
String toString() {
  return 'InputWeatherForecast(area: $area, date: $date)';
}


}

/// @nodoc
abstract mixin class $InputWeatherForecastCopyWith<$Res>  {
  factory $InputWeatherForecastCopyWith(InputWeatherForecast value, $Res Function(InputWeatherForecast) _then) = _$InputWeatherForecastCopyWithImpl;
@useResult
$Res call({
 WeatherArea area, DateTime date
});




}
/// @nodoc
class _$InputWeatherForecastCopyWithImpl<$Res>
    implements $InputWeatherForecastCopyWith<$Res> {
  _$InputWeatherForecastCopyWithImpl(this._self, this._then);

  final InputWeatherForecast _self;
  final $Res Function(InputWeatherForecast) _then;

/// Create a copy of InputWeatherForecast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? area = null,Object? date = null,}) {
  return _then(_self.copyWith(
area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as WeatherArea,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _InputWeatherForecast implements InputWeatherForecast {
   _InputWeatherForecast({required this.area, required this.date});
  factory _InputWeatherForecast.fromJson(Map<String, dynamic> json) => _$InputWeatherForecastFromJson(json);

@override final  WeatherArea area;
@override final  DateTime date;

/// Create a copy of InputWeatherForecast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputWeatherForecastCopyWith<_InputWeatherForecast> get copyWith => __$InputWeatherForecastCopyWithImpl<_InputWeatherForecast>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InputWeatherForecastToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputWeatherForecast&&(identical(other.area, area) || other.area == area)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,area,date);

@override
String toString() {
  return 'InputWeatherForecast(area: $area, date: $date)';
}


}

/// @nodoc
abstract mixin class _$InputWeatherForecastCopyWith<$Res> implements $InputWeatherForecastCopyWith<$Res> {
  factory _$InputWeatherForecastCopyWith(_InputWeatherForecast value, $Res Function(_InputWeatherForecast) _then) = __$InputWeatherForecastCopyWithImpl;
@override @useResult
$Res call({
 WeatherArea area, DateTime date
});




}
/// @nodoc
class __$InputWeatherForecastCopyWithImpl<$Res>
    implements _$InputWeatherForecastCopyWith<$Res> {
  __$InputWeatherForecastCopyWithImpl(this._self, this._then);

  final _InputWeatherForecast _self;
  final $Res Function(_InputWeatherForecast) _then;

/// Create a copy of InputWeatherForecast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? area = null,Object? date = null,}) {
  return _then(_InputWeatherForecast(
area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as WeatherArea,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$Weather {

 WeatherSvg get weatherCondition; int get maxTemperature; int get minTemperature; DateTime get date;
/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherCopyWith<Weather> get copyWith => _$WeatherCopyWithImpl<Weather>(this as Weather, _$identity);

  /// Serializes this Weather to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Weather&&(identical(other.weatherCondition, weatherCondition) || other.weatherCondition == weatherCondition)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,weatherCondition,maxTemperature,minTemperature,date);

@override
String toString() {
  return 'Weather(weatherCondition: $weatherCondition, maxTemperature: $maxTemperature, minTemperature: $minTemperature, date: $date)';
}


}

/// @nodoc
abstract mixin class $WeatherCopyWith<$Res>  {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) _then) = _$WeatherCopyWithImpl;
@useResult
$Res call({
 WeatherSvg weatherCondition, int maxTemperature, int minTemperature, DateTime date
});




}
/// @nodoc
class _$WeatherCopyWithImpl<$Res>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._self, this._then);

  final Weather _self;
  final $Res Function(Weather) _then;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? weatherCondition = null,Object? maxTemperature = null,Object? minTemperature = null,Object? date = null,}) {
  return _then(_self.copyWith(
weatherCondition: null == weatherCondition ? _self.weatherCondition : weatherCondition // ignore: cast_nullable_to_non_nullable
as WeatherSvg,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as int,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Weather implements Weather {
   _Weather({required this.weatherCondition, required this.maxTemperature, required this.minTemperature, required this.date});
  factory _Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

@override final  WeatherSvg weatherCondition;
@override final  int maxTemperature;
@override final  int minTemperature;
@override final  DateTime date;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherCopyWith<_Weather> get copyWith => __$WeatherCopyWithImpl<_Weather>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Weather&&(identical(other.weatherCondition, weatherCondition) || other.weatherCondition == weatherCondition)&&(identical(other.maxTemperature, maxTemperature) || other.maxTemperature == maxTemperature)&&(identical(other.minTemperature, minTemperature) || other.minTemperature == minTemperature)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,weatherCondition,maxTemperature,minTemperature,date);

@override
String toString() {
  return 'Weather(weatherCondition: $weatherCondition, maxTemperature: $maxTemperature, minTemperature: $minTemperature, date: $date)';
}


}

/// @nodoc
abstract mixin class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) _then) = __$WeatherCopyWithImpl;
@override @useResult
$Res call({
 WeatherSvg weatherCondition, int maxTemperature, int minTemperature, DateTime date
});




}
/// @nodoc
class __$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(this._self, this._then);

  final _Weather _self;
  final $Res Function(_Weather) _then;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? weatherCondition = null,Object? maxTemperature = null,Object? minTemperature = null,Object? date = null,}) {
  return _then(_Weather(
weatherCondition: null == weatherCondition ? _self.weatherCondition : weatherCondition // ignore: cast_nullable_to_non_nullable
as WeatherSvg,maxTemperature: null == maxTemperature ? _self.maxTemperature : maxTemperature // ignore: cast_nullable_to_non_nullable
as int,minTemperature: null == minTemperature ? _self.minTemperature : minTemperature // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
