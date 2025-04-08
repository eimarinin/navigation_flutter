// ignore: unused_import, unnecessary_import
import 'package:flutter/material.dart';
// ignore: unused_import, unnecessary_import
import 'package:masamune/masamune.dart';
import 'package:masamune_universal_ui/masamune_universal_ui.dart';

// ignore: unused_import, unnecessary_import
import '/main.dart';

part 'third.page.dart';

/// Page widget for Third.
@immutable
// TODO: Set the path for the page.
@PagePath("/third")
class ThirdPage extends PageScopedWidget {
  const ThirdPage({
    super.key,

    // TODO: Set parameters for the page.
  });

  // TODO: Set parameters for the page in the form (e.g. [final String xxx]).

  /// Used to transition to the ThirdPage screen.
  ///
  /// ```dart
  /// router.push(ThirdPage.query(parameters));    // Push page to ThirdPage.
  /// router.replace(ThirdPage.query(parameters)); // Replace page to ThirdPage.
  /// ```
  @pageRouteQuery
  static const query = _$ThirdPageQuery();

  @override
  Widget build(BuildContext context, PageRef ref) {
    // Describes the process of loading
    // and defining variables required for the page.
    // TODO: Implement the variable loading process.

    // Describes the structure of the page.
    // TODO: Implement the view.
    return UniversalScaffold();
  }
}
