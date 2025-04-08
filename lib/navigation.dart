import 'package:flutter/material.dart';
import 'package:masamune/masamune.dart';
import 'package:navigation/pages/first.dart';
import 'package:navigation/pages/second.dart';
import 'package:navigation/pages/third.dart';

enum TabItem {
  first(icon: Icons.check, label: "First"),
  second(icon: Icons.check, label: "Second"),
  third(icon: Icons.check, label: "Third");

  const TabItem({required this.icon, required this.label});

  final IconData icon;
  final String label;

  RouteQueryBuilder get builder {
    switch (this) {
      case TabItem.first:
        return FirstPage.query;
      case TabItem.second:
        return SecondPage.query;
      case TabItem.third:
        return ThirdPage.query;
    }
  }

  RouteQuery get query {
    switch (this) {
      case TabItem.first:
        return FirstPage.query();
      case TabItem.second:
        return SecondPage.query();
      case TabItem.third:
        return ThirdPage.query();
    }
  }
}
