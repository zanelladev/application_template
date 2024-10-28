/// Constants class for localization configurations.
///
/// This class provides constant values used across the application for managing
/// localization resources, particularly the paths where localization files are stored.
class LocaleConstants {
  /// The base path to the language assets.
  ///
  /// This path points to the directory within the package where JSON files containing
  /// localized strings are stored. These files are expected to be named according
  /// to their respective locale codes (e.g., 'en.json' for English, 'es.json' for Spanish).
  static String baseLangPath = 'packages/core/assets/lang';
}
