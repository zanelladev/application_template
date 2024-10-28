import 'package:flutter/material.dart';

import '../locale_service.dart';

/// A delegate for loading app-specific localizations for the given [LocaleService].
///
/// The [LocaleServiceDelegate] is responsible for loading and providing the
/// app-specific localizations to the [MaterialApp] or [WidgetsApp]. It extends
/// the [LocalizationsDelegate] class with the generic type [LocaleService],
/// specifying the type of the app's localizations.
class LocaleServiceDelegate extends LocalizationsDelegate<LocaleService> {
  /// Creates a new instance of [LocaleServiceDelegate].
  const LocaleServiceDelegate();

  /// The list of supported language codes for the app's localizations.
  static List<String> supported = ['pt'];

  /// Checks if the given [locale] is supported by the app.
  ///
  /// - [locale]: The locale to check for support.
  ///
  /// Returns `true` if the locale is supported, otherwise `false`.
  @override
  bool isSupported(Locale locale) {
    return supported.contains(locale.languageCode);
  }

  /// Loads the app-specific localizations for the given [locale].
  ///
  /// - [locale]: The locale for which to load the localizations.
  ///
  /// Returns a [Future] that completes with the loaded [LocaleService].
  @override
  Future<LocaleService> load(Locale locale) async {
    final localizations = LocaleService(locale);
    await localizations.load();
    return localizations;
  }

  /// Determines whether the localizations should be reloaded.
  ///
  /// - [old]: The old delegate to compare against.
  ///
  /// Returns `false` indicating that the localizations do not need to be reloaded.
  @override
  bool shouldReload(LocalizationsDelegate<LocaleService> old) => false;
}
