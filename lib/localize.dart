// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:masamune/masamune.dart';

part 'localize.localize.dart';

/// App Localization.
///
/// ```dart
/// l().xxx  // Localization for xxx.
/// ```
final l = AppLocalize();

// TODO: Set the Google Spreadsheet URL for the translation.
@GoogleSpreadSheetLocalize([
  "https://docs.google.com/spreadsheets/d/1bw7IXEr7BGkZ4U6on0OuF7HQkTMgDSm6u5ThpBkDPeo/edit#gid=551986808",
], version: 1)
class AppLocalize extends _$AppLocalize {}
