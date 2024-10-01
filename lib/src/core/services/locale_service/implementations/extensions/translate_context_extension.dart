import 'package:flutter/material.dart';

import '../locale_service.dart';

/// Extension on [BuildContext] to provide easy access to translation functionality.
///
/// This extension adds a `translate` method to the [BuildContext] class, allowing
/// for convenient translation of keys into localized strings using the [LocaleService].
extension TranslateContextExtension on BuildContext {
  /// Translates the given [key] into the appropriate localized string.
  ///
  /// - [key]: The key representing the text to be translated.
  ///
  /// Returns the translated string if a translation is found. If no translation is
  /// found, the key itself is returned.
  String translate(String key) => LocaleService.of(this)?.translate(key) ?? key;
}
