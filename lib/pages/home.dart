// ignore: unused_import, unnecessary_import

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:masamune/masamune.dart';
import 'package:masamune_universal_ui/masamune_universal_ui.dart';

// Project imports:
import '/main.dart';
import '/models/counter.dart';

// ignore: unused_import, unnecessary_import

// ignore: unused_import, unnecessary_import


part 'home.page.dart';

@immutable
@PagePath("/")
class HomePage extends PageScopedWidget {
  const HomePage({super.key});

  /// Used to transition to the HomePage screen.
  ///
  /// ```dart
  /// router.push(HomePage.query(parameters));    // Push page to HomePage.
  /// router.replace(HomePage.query(parameters)); // Replace page to HomePage.
  /// ```
  @pageRouteQuery
  static const query = _$HomePageQuery();

  @override
  Widget build(BuildContext context, PageRef ref) {
    // Describes the process of loading
    // and defining variables required for the page.
    final model = ref.app.model(CounterModel.document())..load();

    // Describes the structure of the page.
    return UniversalScaffold(
      appBar: UniversalAppBar(title: Text(l().appTitle)),
      body: UniversalColumn(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("You have pushed the button this many times:"),
          Text(
            "${model.value?.counter.value ?? 0}",
            style: context.theme.text.displayMedium,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final value = model.value ?? const CounterModel();
          model.save(value.copyWith(counter: value.counter.increment(1)));
        },
        tooltip: "Increment",
        child: const Icon(Icons.add),
      ),
    );
  }
}
