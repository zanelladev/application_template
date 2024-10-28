/// An enumeration representing the current status of a purchase.
///
/// The [CurrentPurchaseStatus] enum defines various states that a purchase can be in,
/// such as completed, pending, or canceled.
enum CurrentPurchaseStatus {
  /// Indicates that the purchase has been completed successfully.
  purchased,

  /// Indicates that the purchase is currently pending.
  pending,

  /// Indicates that an error occurred during the purchase process.
  error,

  /// Indicates that a previous purchase has been restored.
  restored,

  /// Indicates that the purchase has been canceled.
  canceled,

  /// Indicates that there is no current purchase status.
  none
}
