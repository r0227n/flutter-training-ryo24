// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WeatherArea {

 DateTime get date; WeatherCity get city;
/// Create a copy of WeatherArea
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherAreaCopyWith<WeatherArea> get copyWith => _$WeatherAreaCopyWithImpl<WeatherArea>(this as WeatherArea, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherArea&&(identical(other.date, date) || other.date == date)&&(identical(other.city, city) || other.city == city));
}


@override
int get hashCode => Object.hash(runtimeType,date,city);

@override
String toString() {
  return 'WeatherArea(date: $date, city: $city)';
}


}

/// @nodoc
abstract mixin class $WeatherAreaCopyWith<$Res>  {
  factory $WeatherAreaCopyWith(WeatherArea value, $Res Function(WeatherArea) _then) = _$WeatherAreaCopyWithImpl;
@useResult
$Res call({
 DateTime date, WeatherCity city
});




}
/// @nodoc
class _$WeatherAreaCopyWithImpl<$Res>
    implements $WeatherAreaCopyWith<$Res> {
  _$WeatherAreaCopyWithImpl(this._self, this._then);

  final WeatherArea _self;
  final $Res Function(WeatherArea) _then;

/// Create a copy of WeatherArea
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? city = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as WeatherCity,
  ));
}

}


/// @nodoc


class _WeatherArea implements WeatherArea {
   _WeatherArea({required this.date, this.city = WeatherCity.tokyo});
  

@override final  DateTime date;
@override@JsonKey() final  WeatherCity city;

/// Create a copy of WeatherArea
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherAreaCopyWith<_WeatherArea> get copyWith => __$WeatherAreaCopyWithImpl<_WeatherArea>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherArea&&(identical(other.date, date) || other.date == date)&&(identical(other.city, city) || other.city == city));
}


@override
int get hashCode => Object.hash(runtimeType,date,city);

@override
String toString() {
  return 'WeatherArea(date: $date, city: $city)';
}


}

/// @nodoc
abstract mixin class _$WeatherAreaCopyWith<$Res> implements $WeatherAreaCopyWith<$Res> {
  factory _$WeatherAreaCopyWith(_WeatherArea value, $Res Function(_WeatherArea) _then) = __$WeatherAreaCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, WeatherCity city
});




}
/// @nodoc
class __$WeatherAreaCopyWithImpl<$Res>
    implements _$WeatherAreaCopyWith<$Res> {
  __$WeatherAreaCopyWithImpl(this._self, this._then);

  final _WeatherArea _self;
  final $Res Function(_WeatherArea) _then;

/// Create a copy of WeatherArea
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? city = null,}) {
  return _then(_WeatherArea(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as WeatherCity,
  ));
}


}

// dart format on
