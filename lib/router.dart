// Package imports:
import 'package:masamune/masamune.dart';
import 'package:navigation/navigation.dart';

/// App Router.
///
/// ```dart
/// router.push(Page.query());  // Push page to Page.
/// router.pop();               // Pop page.
/// ```
final router = AppRouter(
  initialQuery: TabItem.first.query,
  pages: [...TabItem.values.map((e) => e.builder)],
);
