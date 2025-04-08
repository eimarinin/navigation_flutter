// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_field, unused_element, require_trailing_commas, prefer_const_constructors, unnecessary_overrides, prefer_const_literals_to_create_immutables,  unnecessary_null_in_if_null_operators, library_prefixes, directives_ordering, depend_on_referenced_packages

// **************************************************************************
// RouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart';
import 'package:katana_router/katana_router.dart';
import 'package:navigation/pages/first.dart' as _$2;
import 'package:navigation/pages/home.dart' as _$1;
import 'package:navigation/pages/second.dart' as _$3;
import 'package:navigation/pages/third.dart' as _$4;
export 'package:navigation/pages/first.dart' show FirstPage;
export 'package:navigation/pages/home.dart' show HomePage;
export 'package:navigation/pages/second.dart' show SecondPage;
export 'package:navigation/pages/third.dart' show ThirdPage;

class AutoRouter extends AppRouter {
  AutoRouter({
    super.unknown,
    super.boot,
    super.initialPath,
    super.initialQuery,
    super.redirect = const [],
    super.observers = const [],
    super.redirectLimit = 5,
    super.navigatorKey,
    super.restorationScopeId,
    super.defaultTransitionQuery,
    List<RouteQueryBuilder>? pages,
    super.reportsRouteUpdateToEngine = true,
    super.backgroundWidget = const Scaffold(),
    super.loggerAdapters,
  }) : super(
         pages:
             pages ??
             [
               _$4.ThirdPage.query,
               _$3.SecondPage.query,
               _$2.FirstPage.query,
               _$1.HomePage.query,
             ],
       );

  static const thirdPage = _$4.ThirdPage.query;

  static const secondPage = _$3.SecondPage.query;

  static const firstPage = _$2.FirstPage.query;

  static const homePage = _$1.HomePage.query;

  Map<RouteQueryBuilder, String> queryMap = {
    _$4.ThirdPage.query: "/third",
    _$3.SecondPage.query: "/second",
    _$2.FirstPage.query: "/first",
    _$1.HomePage.query: "/",
  };
}
