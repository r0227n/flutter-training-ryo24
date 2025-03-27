// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Result<T,E extends Exception> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Result<T, E>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Result<$T, $E>()';
}


}

/// @nodoc
class $ResultCopyWith<T,E extends Exception,$Res>  {
$ResultCopyWith(Result<T, E> _, $Res Function(Result<T, E>) __);
}


/// @nodoc


class Success<T,E extends Exception> implements Result<T, E> {
  const Success(this.success);
  

 final  T success;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessCopyWith<T, E, Success<T, E>> get copyWith => _$SuccessCopyWithImpl<T, E, Success<T, E>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success<T, E>&&const DeepCollectionEquality().equals(other.success, success));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(success));

@override
String toString() {
  return 'Result<$T, $E>.success(success: $success)';
}


}

/// @nodoc
abstract mixin class $SuccessCopyWith<T,E extends Exception,$Res> implements $ResultCopyWith<T, E, $Res> {
  factory $SuccessCopyWith(Success<T, E> value, $Res Function(Success<T, E>) _then) = _$SuccessCopyWithImpl;
@useResult
$Res call({
 T success
});




}
/// @nodoc
class _$SuccessCopyWithImpl<T,E extends Exception,$Res>
    implements $SuccessCopyWith<T, E, $Res> {
  _$SuccessCopyWithImpl(this._self, this._then);

  final Success<T, E> _self;
  final $Res Function(Success<T, E>) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? success = freezed,}) {
  return _then(Success<T, E>(
freezed == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class Error<T,E extends Exception> implements Result<T, E> {
  const Error(this.error);
  

 final  E error;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<T, E, Error<T, E>> get copyWith => _$ErrorCopyWithImpl<T, E, Error<T, E>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error<T, E>&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'Result<$T, $E>.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<T,E extends Exception,$Res> implements $ResultCopyWith<T, E, $Res> {
  factory $ErrorCopyWith(Error<T, E> value, $Res Function(Error<T, E>) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 E error
});




}
/// @nodoc
class _$ErrorCopyWithImpl<T,E extends Exception,$Res>
    implements $ErrorCopyWith<T, E, $Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error<T, E> _self;
  final $Res Function(Error<T, E>) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(Error<T, E>(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as E,
  ));
}


}

// dart format on
