import 'dart:convert';

/// Extension for [String] to provide capitalization functionality.
extension StringCapitalizationExtension on String {
  /// Capitalizes the first letter of the string.
  ///
  /// - Returns: The string with the first letter capitalized. If the string is empty, returns the string itself.
  String capitalize() {
    return switch (length) {
      0 => this,
      1 => toUpperCase(),
      _ => substring(0, 1).toUpperCase() + substring(1),
    };
  }
}

/// Extension for [String] to provide regex matching functionality.
extension StringRegexMatchExtension on String {
  /// Checks if the string matches the given regular expression [regex].
  ///
  /// - Parameter regex: The regular expression to match against.
  /// - Returns: `true` if the string matches the [regex], `false` otherwise.
  bool matches(RegExp regex) => regex.hasMatch(this);
}

/// Extension for [String] to provide UTF-8 encoding functionality.
extension StringUtf8EncodingExtension on String {
  /// Encodes the string as a list of UTF-8 bytes.
  ///
  /// - Returns: A list of integers representing the UTF-8 encoded string.
  List<int> toUtf8() => utf8.encode(this);
}

/// Extension for nullable [String] to check for null or empty values.
extension NullableStringCheckExtension on String? {
  /// Checks if the string is null or empty.
  ///
  /// - Returns: `true` if the string is either null or empty, `false` otherwise.
  bool get isNullOrEmpty => this?.isEmpty ?? true;
}
