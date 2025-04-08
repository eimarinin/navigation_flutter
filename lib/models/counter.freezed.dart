// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CounterModel {

 ModelCounter get counter;
/// Create a copy of CounterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CounterModelCopyWith<CounterModel> get copyWith => _$CounterModelCopyWithImpl<CounterModel>(this as CounterModel, _$identity);

  /// Serializes this CounterModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CounterModel&&(identical(other.counter, counter) || other.counter == counter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,counter);

@override
String toString() {
  return 'CounterModel(counter: $counter)';
}


}

/// @nodoc
abstract mixin class $CounterModelCopyWith<$Res>  {
  factory $CounterModelCopyWith(CounterModel value, $Res Function(CounterModel) _then) = _$CounterModelCopyWithImpl;
@useResult
$Res call({
 ModelCounter counter
});




}
/// @nodoc
class _$CounterModelCopyWithImpl<$Res>
    implements $CounterModelCopyWith<$Res> {
  _$CounterModelCopyWithImpl(this._self, this._then);

  final CounterModel _self;
  final $Res Function(CounterModel) _then;

/// Create a copy of CounterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? counter = null,}) {
  return _then(_self.copyWith(
counter: null == counter ? _self.counter : counter // ignore: cast_nullable_to_non_nullable
as ModelCounter,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CounterModel extends CounterModel {
  const _CounterModel({this.counter = const ModelCounter(0)}): super._();
  factory _CounterModel.fromJson(Map<String, dynamic> json) => _$CounterModelFromJson(json);

@override@JsonKey() final  ModelCounter counter;

/// Create a copy of CounterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CounterModelCopyWith<_CounterModel> get copyWith => __$CounterModelCopyWithImpl<_CounterModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CounterModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CounterModel&&(identical(other.counter, counter) || other.counter == counter));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,counter);

@override
String toString() {
  return 'CounterModel(counter: $counter)';
}


}

/// @nodoc
abstract mixin class _$CounterModelCopyWith<$Res> implements $CounterModelCopyWith<$Res> {
  factory _$CounterModelCopyWith(_CounterModel value, $Res Function(_CounterModel) _then) = __$CounterModelCopyWithImpl;
@override @useResult
$Res call({
 ModelCounter counter
});




}
/// @nodoc
class __$CounterModelCopyWithImpl<$Res>
    implements _$CounterModelCopyWith<$Res> {
  __$CounterModelCopyWithImpl(this._self, this._then);

  final _CounterModel _self;
  final $Res Function(_CounterModel) _then;

/// Create a copy of CounterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? counter = null,}) {
  return _then(_CounterModel(
counter: null == counter ? _self.counter : counter // ignore: cast_nullable_to_non_nullable
as ModelCounter,
  ));
}


}

// dart format on
