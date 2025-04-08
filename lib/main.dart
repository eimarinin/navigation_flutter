// Package imports:
import 'package:masamune/masamune.dart';

// Project imports:
import 'adapter.dart';
import 'config.dart';
import 'localize.dart';
import 'router.dart';
import 'theme.dart';

export 'config.dart';
export 'router.dart';
export 'theme.dart';
export 'localize.dart';
export 'adapter.dart';

/// App Ref.
///
/// ```dart
/// appRef.controller(Controller.query()); // Get a controller.
/// appRef.model(Model.query());           // Get a model.
/// ```
final appRef = AppRef();

/// App authentication.
///
/// ```dart
/// appAuth.signIn(
///   EmailAndPasswordSignInAuthProvider(
///     email: email,
///     password: password,
///   ),
/// );
/// ```
final appAuth = Authentication();

/// App server functions.
///
/// It is used in conjunction with the server side.
///
/// ```dart
/// appFunction.notification(
///   title: "Notification",
///   text: "Notification text",
///   target: "Topic",
/// );
/// ```
final appFunction = Functions();

/// App logger.
///
/// Used to obtain and send logs.
///
/// ```
/// appLogger.send(
///   AnalyticsValue(
///     userId: "user id",
///   )
/// );
/// ```
final appLogger = Logger();

/// App Flavor.
const flavor = String.fromEnvironment("FLAVOR");

/// App.
void main() {
  runMasamuneApp(
    (ref) => MasamuneApp(
      title: title,
      appRef: appRef,
      theme: theme,
      routerConfig: router,
      localize: l,
      authAdapter: authAdapter,
      modelAdapter: modelAdapter,
      storageAdapter: storageAdapter,
      functionsAdapter: functionsAdapter,
      masamuneAdapters: ref.adapters,
      loggerAdapters: ref.loggerAdapters,
      navigatorObservers: ref.navigatorObservers,
    ),
    masamuneAdapters: masamuneAdapters,
    loggerAdapters: loggerAdapters,
  );
}
