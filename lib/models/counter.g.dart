// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CounterModel _$CounterModelFromJson(Map<String, dynamic> json) =>
    _CounterModel(
      counter:
          json['counter'] == null
              ? const ModelCounter(0)
              : ModelCounter.fromJson(json['counter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CounterModelToJson(_CounterModel instance) =>
    <String, dynamic>{'counter': instance.counter};
