// ignore: unused_import, unnecessary_import
import 'package:flutter/material.dart';
// ignore: unused_import, unnecessary_import
import 'package:masamune/masamune.dart';
import 'package:masamune_universal_ui/masamune_universal_ui.dart';

// ignore: unused_import, unnecessary_import
import '/main.dart';

part 'second.page.dart';

/// Page widget for Second.
@immutable
// TODO: Set the path for the page.
@PagePath("/second")
class SecondPage extends PageScopedWidget {
  const SecondPage({
    super.key,

    // TODO: Set parameters for the page.
  });

  // TODO: Set parameters for the page in the form (e.g. [final String xxx]).

  /// Used to transition to the SecondPage screen.
  ///
  /// ```dart
  /// router.push(SecondPage.query(parameters));    // Push page to SecondPage.
  /// router.replace(SecondPage.query(parameters)); // Replace page to SecondPage.
  /// ```
  @pageRouteQuery
  static const query = _$SecondPageQuery();

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
