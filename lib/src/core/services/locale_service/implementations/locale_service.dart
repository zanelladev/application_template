import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/locale_constants.dart';
import '../i_locale_service.dart';
import 'delegates/locale_service_delegate.dart';

/// Provides localization functionality for the application.
///
/// The [LocaleService] class implements the [ILocaleService] interface
/// and is responsible for loading and managing localization strings for a
/// specific locale. It uses a JSON file to load the localized strings and
/// provides a `translate` method to retrieve the localized value for a given key.
///
/// Example usage:
/// ```dart
/// final localizations = LocaleService(locale);
/// await localizations.load();
/// final translatedString = localizations.translate('hello');
/// ```
///
/// To use the [LocaleService] class, you need to create an instance with the
/// desired [Locale], call the `load` method to load the localized strings, and
/// then use the `translate` method to retrieve the localized values.
///
/// The [LocaleService] class also provides a static `of` method to retrieve
/// the [LocaleService] instance from the current [BuildContext]. This allows
/// accessing the localized strings without having to pass the instance
/// explicitly.
class LocaleService extends ValueNotifier<Map<String, String>> implements ILocaleService {
  /// The locale associated with this instance of [LocaleService].
  final Locale locale;

  /// Creates a new instance of [LocaleService] with the specified [locale].
  ///
  /// The [locale] represents the locale for which the localization strings
  /// should be loaded and managed.
  LocaleService(this.locale) : super({});

  /// Retrieves the [LocaleService] instance from the current [BuildContext].
  ///
  /// This static method can be used to retrieve the [LocaleService] instance
  /// from the current [BuildContext]. It simplifies the process of accessing
  /// the localized strings by eliminating the need to pass the [LocaleService]
  /// instance explicitly.
  ///
  /// Example:
  /// ```dart
  /// final localizations = LocaleService.of(context);
  /// final translatedString = localizations.translate('hello');
  /// ```
  static LocaleService? of(BuildContext context) {
    return Localizations.of<LocaleService>(context, LocaleService);
  }

  /// The delegate for this localization service.
  ///
  /// The [delegate] provides the necessary functionality to use the
  /// [LocaleService] class with Flutter's localization system. It is
  /// used by the `Localizations` widget to load and manage the localization
  /// resources.
  static const LocaleServiceDelegate delegate = LocaleServiceDelegate();

  /// Loads the localized strings for the specified [locale].
  ///
  /// This method reads a JSON file containing the localized strings for the
  /// specified [locale] and populates the notifier's value with the
  /// loaded values. It returns a [Future] that completes when the loading is complete.
  ///
  /// This method should be called before using the `translate` method to ensure
  /// that the localized strings are available.
  @override
  Future<void> load() async {
    final jsonString = await rootBundle.loadString('${LocaleConstants.baseLangPath}/${locale.languageCode}.json');
    final Map<String, dynamic> jsonMap = json.decode(jsonString);

    final localizations = jsonMap.map((key, value) => MapEntry(key, value.toString()));

    setLocalizations(localizations);
  }

  /// Translates the given [key] to its localized value.
  ///
  /// This method retrieves the localized value for the specified [key] from the
  /// notifier's value. If the [key] is not found, the [key] itself is returned
  /// as the translation.
  ///
  /// Example:
  /// ```dart
  /// final translatedString = localizations.translate('hello');
  /// ```
  @override
  String translate(String key) => value[key] ?? key;

  /// Sets the localizations map with the provided [localizations].
  void setLocalizations(Map<String, String> localizations) => value = localizations;
}
