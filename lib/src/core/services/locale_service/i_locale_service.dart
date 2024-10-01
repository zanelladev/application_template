/// Interface for handling translations and localization.
///
/// This interface provides methods for translating keys into localized strings.
/// Implementations of this interface should handle the loading of localized resources
/// and provide a mechanism for translating keys to their respective localized values.
abstract interface class ILocaleService {
  /// Loads the localization resources for the appropriate locale.
  ///
  /// This method should be called before attempting to translate any keys
  /// to ensure that the localized resources are available.
  Future<void> load();

  /// Translates the provided [key] into the appropriate localized string.
  ///
  /// - [key]: The key representing the text to be translated.
  ///
  /// Returns the translated string or the key itself if no translation is found.
  String translate(String key);
}
