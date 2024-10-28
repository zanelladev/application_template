/// A class representing the configuration settings for different app flavors.
///
/// This class encapsulates the configuration details such as the API key and
/// the base URL, which can vary between different app flavors.
class FlavorConfig {
  /// The API key used for authenticating requests.
  final String apiKey;

  /// The base URL of the API.
  final String baseUrl;

  /// Constructs a [FlavorConfig].
  const FlavorConfig({
    required this.apiKey,
    required this.baseUrl,
  });

  /// Factory constructor that creates a [FlavorConfig] from environment variables.
  ///
  /// This constructor reads the `API_KEY` and `BASE_URL` from the environment
  /// using `String.fromEnvironment` and initializes a new instance of [FlavorConfig].
  ///
  /// Returns a new instance of [FlavorConfig] with the environment-specific settings.
  factory FlavorConfig.fromEnvironment() {
    return const FlavorConfig(
      apiKey: String.fromEnvironment('API_KEY'),
      baseUrl: String.fromEnvironment('BASE_URL'),
    );
  }
}
