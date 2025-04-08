// ignore: unused_import, unnecessary_import

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:masamune/masamune.dart';

// Project imports:
import '/main.dart';

// ignore: unused_import, unnecessary_import

// ignore: unused_import, unnecessary_import


part 'counter.m.dart';
part 'counter.g.dart';
part 'counter.freezed.dart';

/// Alias for ModelRef&lt;CounterModel&gt;.
///
/// When defining parameters for other Models, you can define them as follows
///
/// ```dart
/// @refParam CounterModelRef counter
/// ```
typedef CounterModelRef = ModelRef<CounterModel>?;

/// Value for model.
@freezed
@formValue
@immutable
@DocumentModelPath("app/counter")
abstract class CounterModel with _$CounterModel {
  const factory CounterModel({@Default(ModelCounter(0)) ModelCounter counter}) =
      _CounterModel;
  const CounterModel._();

  factory CounterModel.fromJson(Map<String, Object?> json) =>
      _$CounterModelFromJson(json);

  /// Query for document.
  ///
  /// ```dart
  /// appRef.model(CounterModel.document());       // Get the document.
  /// ref.app.model(CounterModel.document())..load();  // Load the document.
  /// ```
  static const document = _$CounterModelDocumentQuery();

  /// Query for form value.
  ///
  /// ```dart
  /// ref.app.form(CounterModel.form(CounterModel()));    // Get the form controller in app scope.
  /// ref.page.form(CounterModel.form(CounterModel()));    // Get the form controller in page scope.
  /// ```
  static const form = _$CounterModelFormQuery();
}
