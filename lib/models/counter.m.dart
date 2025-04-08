// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_field, unused_element, require_trailing_commas, prefer_const_constructors, unnecessary_overrides, prefer_const_literals_to_create_immutables,  unnecessary_null_in_if_null_operators, library_prefixes, directives_ordering, no_leading_underscores_for_local_identifiers, unnecessary_brace_in_string_interps, unnecessary_type_check, library_private_types_in_public_api, unnecessary_nullable_for_final_variable_declarations, prefer_const_declarations

part of 'counter.dart';

// **************************************************************************
// DocumentModelGenerator
// **************************************************************************

extension on CounterModel {
  Map<String, dynamic> get rawValue {
    return toJson();
  }
}

enum _$CounterModelKeys { counter }

class _$CounterModelDocument extends DocumentBase<CounterModel>
    with ModelRefMixin<CounterModel> {
  _$CounterModelDocument(super.modelQuery, [super._value]);

  static const ModelAccessQuery? defaultModelAccessQuery = null;

  static const List<ModelValidationQuery>? defaultValidationQueries = [];

  static final ModelAdapter? defaultModelAdapter = null;

  @override
  CounterModel fromMap(DynamicMap map) => CounterModel.fromJson(map);

  @override
  DynamicMap toMap(CounterModel value) => value.rawValue;
}

typedef _$CounterModelMirrorDocument = _$CounterModelDocument;

@immutable
class _$CounterModelRefPath extends ModelRefPath<CounterModel> {
  const _$CounterModelRefPath() : super("");

  @override
  DocumentModelQuery get modelQuery {
    return DocumentModelQuery("app/counter", adapter: adapter);
  }
}

@immutable
class _$CounterModelInitialDocument extends ModelInitialDocument<CounterModel> {
  const _$CounterModelInitialDocument(super.value);

  @override
  String get path => "app/counter";

  @override
  DynamicMap toMap(CounterModel value) => value.rawValue;
}

@immutable
class _$CounterModelDocumentQuery {
  const _$CounterModelDocumentQuery();

  @useResult
  _$_CounterModelDocumentQuery call({
    bool useTestModelAdapter = true,
    ModelAdapter? adapter,
    ModelAccessQuery? accessQuery,
  }) {
    return _$_CounterModelDocumentQuery(
      DocumentModelQuery(
        "app/counter",
        adapter: adapter ?? _$CounterModelDocument.defaultModelAdapter,
        useTestModelAdapter: useTestModelAdapter,
        accessQuery:
            accessQuery ?? _$CounterModelDocument.defaultModelAccessQuery,
        validationQueries: _$CounterModelDocument.defaultValidationQueries,
      ),
    );
  }

  bool hasMatchPath(String path) {
    return RegExp(
      "app/counter".trimQuery().trimString("/"),
    ).hasMatch(path.trimQuery().trimString("/"));
  }
}

@immutable
class _$_CounterModelDocumentQuery
    extends ModelQueryBase<_$CounterModelDocument> {
  const _$_CounterModelDocumentQuery(this.modelQuery);

  final DocumentModelQuery modelQuery;

  @override
  _$CounterModelDocument Function() call(Ref ref) =>
      () => _$CounterModelDocument(modelQuery);

  @override
  String get queryName => modelQuery.toString();
}

typedef _$CounterModelMirrorRefPath = _$CounterModelRefPath;
typedef _$CounterModelMirrorInitialDocument = _$CounterModelInitialDocument;

// **************************************************************************
// FormValueGenerator
// **************************************************************************

@immutable
class _$CounterModelFormQuery {
  const _$CounterModelFormQuery();

  @useResult
  _$_CounterModelFormQuery call(CounterModel value) {
    return _$_CounterModelFormQuery(value);
  }
}

@immutable
class _$_CounterModelFormQuery extends FormControllerQueryBase<CounterModel> {
  const _$_CounterModelFormQuery(this.value);

  final CounterModel value;

  @override
  FormController<CounterModel> Function() call(Ref ref) =>
      () => FormController(value);

  @override
  String get queryName => value.hashCode.toString();

  @override
  bool get autoDisposeWhenUnreferenced => true;
}
