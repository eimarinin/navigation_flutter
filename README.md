# ❓ Question
## How do I implement proper tab navigation using AutoRoute in a Masamune-based Flutter app without router conflicts?
I'm using the Masamune Framework on top of Flutter and trying to implement tabbed navigation using `NavigationBar`, where each tab is its own page (`FirstPage`, `SecondPage`, `ThirdPage`). Everything should work with AutoRoute for navigation.

I’ve set up a global `appRouter` in `main.dar`t and passed it to `MasamuneApp`, but inside `HomePage`, I’m also creating a separate AppRouter using `Router.withConfig`, and then use it for navigating between tabs.

# 😵 The Problem
It feels like I have two routers running at the same time:

* `appRouter` – the global router used by `MasamuneApp`
* `_router` – a local router created inside `HomePage`

Because of this:

* The URL in the browser is not synchronized with the current tab
* Navigation works, but it feels like I'm "hacking" around the routing system
* `AutoRouter.of(context)` doesn't return what I expect in nested routes

# 💡 Potential Solution (Not Sure)
I’ve read about `AutoTabsRouter` and `AutoTabsScaffold` in the AutoRoute docs, but I’m confused about how to combine them with Masamune and my current `TabItem` enum, which returns a `RouteQuery`.

I tried removing the custom `_router` and using just `const AutoRouter()` inside `HomePage`, but I get this error:
```
The argument type 'AutoRouter' can't be assigned to the parameter type 'Widget?'
```

So now I’m confused:

* Where should nested routing be configured?
* Do I actually need a local AppRouter in HomePage?
* How do I properly define nested tab routes?
* How do I control the active tab and sync it with the browser URL?

# 📦 Code
`main.dart`
```
final appRouter = AutoRouter();

void main() {
  usePathUrlStrategy();

  runMasamuneApp(
    (ref) => MasamuneApp(
      title: title,
      routerConfig: appRouter,
      ...
    ),
    ...
  );
}
```
`HomePage`
```
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

  @override
  Widget build(BuildContext context) {
    return UniversalScaffold(
      body: Router.withConfig(config: _router), // <- conflict here?
      ...
    );
  }
}

```
`TabItem`
```

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
		...
    }
  }

  RouteQuery get query {
    switch (this) {
      case TabItem.first:
        return FirstPage.query();
		...
    }
  }
}
```

# 🔎 What I Want
I just want to:

* Have a single router
* Switch between tabs via NavigationBar
* Keep the active tab in sync with the browser URL
* Render the appropriate page for each tab

# 🙏 Help
What am I doing wrong? What's the correct way to architect this with AutoRoute and Masamune?

In main.dart, I added `home: HomePage(),` to fix the problem: when debugging, when selecting `select` to view a specific element, I have duplicated `HomePage`, they become nested. 

The entire project code is available here:
https://github.com/eimarinin/navigation_flutter