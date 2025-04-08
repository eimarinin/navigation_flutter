// ignore: unused_import, unnecessary_import
import 'package:flutter/material.dart';
// ignore: unused_import, unnecessary_import
import 'package:masamune/masamune.dart';
import 'package:masamune_universal_ui/masamune_universal_ui.dart';

// ignore: unused_import, unnecessary_import
import '/main.dart';

part 'first.page.dart';

/// Page widget for First.
@immutable
// TODO: Set the path for the page.
@PagePath("/first")
class FirstPage extends PageScopedWidget {
  const FirstPage({
    super.key,

    // TODO: Set parameters for the page.
  });

  // TODO: Set parameters for the page in the form (e.g. [final String xxx]).

  /// Used to transition to the FirstPage screen.
  ///
  /// ```dart
  /// router.push(FirstPage.query(parameters));    // Push page to FirstPage.
  /// router.replace(FirstPage.query(parameters)); // Replace page to FirstPage.
  /// ```
  @pageRouteQuery
  static const query = _$FirstPageQuery();

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
