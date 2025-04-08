// Package imports:
import 'package:masamune/masamune.dart';

// Project imports:
import 'pages/home.dart';

/// App Router.
///
/// ```dart
/// router.push(Page.query());  // Push page to Page.
/// router.pop();               // Pop page.
/// ```
final router = AppRouter(
  // TODO: Please configure the initial routing and redirection settings.
  boot: null,
  initialQuery: HomePage.query(),
  redirect: [],
  pages: [
    // TODO: Add the page query to be used for routing.
  ],
);
