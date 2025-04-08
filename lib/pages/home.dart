// ignore: unused_import, unnecessary_import

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:masamune/masamune.dart';
import 'package:masamune_universal_ui/masamune_universal_ui.dart';
import 'package:navigation/navigation.dart';

// Project imports:
import '/main.dart';
import '/models/counter.dart';

// ignore: unused_import, unnecessary_import

// ignore: unused_import, unnecessary_import

part 'home.page.dart';

@immutable
@PagePath("/", name: "home")
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @pageRouteQuery
  static const query = _$HomePageQuery();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final AppRouter _router;

  @override
  void initState() {
    super.initState();
    _router = AppRouter(
      initialQuery: TabItem.first.query,
      pages: [...TabItem.values.map((e) => e.builder)],
    );
    _router.addListener(_handleUpdate);
  }

  void _handleUpdate() => setState(() {});

  @override
  void dispose() {
    _router.removeListener(_handleUpdate);
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentQuery = _router.currentQuery;
    final selectedIndex = TabItem.values
        .indexWhere((item) => item.query.path == currentQuery?.path)
        .clamp(0, TabItem.values.length - 1);

    return UniversalScaffold(
      appBar: UniversalAppBar(title: Text(TabItem.values[selectedIndex].label)),
      body: Router.withConfig(config: _router),
      footer: _NavigationBar(
        selectedIndex: selectedIndex,
        onSelect: (index) {
          final newQuery = TabItem.values[index].query;
          if (newQuery.path != _router.currentQuery?.path) {
            _router.replace(newQuery, TransitionQuery.none);
          }
        },
      ),
    );
  }
}

class _NavigationBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelect;

  const _NavigationBar({required this.selectedIndex, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: onSelect,
      destinations:
          TabItem.values.map((type) {
            return NavigationDestination(
              icon: Icon(type.icon),
              label: type.label,
            );
          }).toList(),
    );
  }
}
