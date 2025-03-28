// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_api_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherApiModel {

 WeatherCity get area; DateTime get date;
/// Create a copy of WeatherApiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherApiModelCopyWith<WeatherApiModel> get copyWith => _$WeatherApiModelCopyWithImpl<WeatherApiModel>(this as WeatherApiModel, _$identity);

  /// Serializes this WeatherApiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherApiModel&&(identical(other.area, area) || other.area == area)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,area,date);

@override
String toString() {
  return 'WeatherApiModel(area: $area, date: $date)';
}


}

/// @nodoc
abstract mixin class $WeatherApiModelCopyWith<$Res>  {
  factory $WeatherApiModelCopyWith(WeatherApiModel value, $Res Function(WeatherApiModel) _then) = _$WeatherApiModelCopyWithImpl;
@useResult
$Res call({
 WeatherCity area, DateTime date
});




}
/// @nodoc
class _$WeatherApiModelCopyWithImpl<$Res>
    implements $WeatherApiModelCopyWith<$Res> {
  _$WeatherApiModelCopyWithImpl(this._self, this._then);

  final WeatherApiModel _self;
  final $Res Function(WeatherApiModel) _then;

/// Create a copy of WeatherApiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? area = null,Object? date = null,}) {
  return _then(_self.copyWith(
area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as WeatherCity,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WeatherApiModel implements WeatherApiModel {
   _WeatherApiModel({required this.area, required this.date});
  factory _WeatherApiModel.fromJson(Map<String, dynamic> json) => _$WeatherApiModelFromJson(json);

@override final  WeatherCity area;
@override final  DateTime date;

/// Create a copy of WeatherApiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherApiModelCopyWith<_WeatherApiModel> get copyWith => __$WeatherApiModelCopyWithImpl<_WeatherApiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherApiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherApiModel&&(identical(other.area, area) || other.area == area)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,area,date);

@override
String toString() {
  return 'WeatherApiModel(area: $area, date: $date)';
}


}

/// @nodoc
abstract mixin class _$WeatherApiModelCopyWith<$Res> implements $WeatherApiModelCopyWith<$Res> {
  factory _$WeatherApiModelCopyWith(_WeatherApiModel value, $Res Function(_WeatherApiModel) _then) = __$WeatherApiModelCopyWithImpl;
@override @useResult
$Res call({
 WeatherCity area, DateTime date
});




}
/// @nodoc
class __$WeatherApiModelCopyWithImpl<$Res>
    implements _$WeatherApiModelCopyWith<$Res> {
  __$WeatherApiModelCopyWithImpl(this._self, this._then);

  final _WeatherApiModel _self;
  final $Res Function(_WeatherApiModel) _then;

/// Create a copy of WeatherApiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? area = null,Object? date = null,}) {
  return _then(_WeatherApiModel(
area: null == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as WeatherCity,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
