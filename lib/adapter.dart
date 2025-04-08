// Package imports:
import 'package:masamune/masamune.dart';
import 'package:masamune_universal_ui/masamune_universal_ui.dart';

/// App Model.
///
/// By replacing this with another adapter, the data storage location can be changed.
// TODO: Change the database.
final modelAdapter = RuntimeModelAdapter();

/// App Auth.
///
/// Changing to another adapter allows you to change to another authentication mechanism.
// TODO: Change the authentication.
final authAdapter = RuntimeAuthAdapter();

/// App Storage.
///
/// Changing to another adapter allows you to change to another storage mechanism.
// TODO: Change the storage.
final storageAdapter = LocalStorageAdapter();

/// App Functions.
///
/// Changing to another adapter allows you to change to another functions mechanism.
// TODO: Change the functions.
final functionsAdapter = RuntimeFunctionsAdapter();

/// Logger adapter list.
///
/// Adapters for logging can be defined here.
// TODO: Change the loggers.
final loggerAdapters = <LoggerAdapter>[const ConsoleLoggerAdapter()];

/// Masamune adapter.
///
/// The Masamune framework plugin functions can be defined together.
// TODO: Add the adapters.
final masamuneAdapters = <MasamuneAdapter>[const UniversalMasamuneAdapter()];
