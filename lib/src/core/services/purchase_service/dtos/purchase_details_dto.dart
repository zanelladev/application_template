import 'enums/current_purchase_status.dart';

/// A Data Transfer Object (DTO) that contains details about a purchase.
///
/// This class encapsulates information about a product purchase, including the product ID,
/// the purchase ID, and the current status of the purchase.
class PurchaseDetailsDTO {
  /// The ID of the product being purchased.
  final String productID;

  /// The ID of the purchase, if available.
  final String? purchaseID;

  /// The current status of the purchase.
  final CurrentPurchaseStatus status;

  /// Constructs a [PurchaseDetailsDTO] with the given [productID], [purchaseID], and [status].
  const PurchaseDetailsDTO({
    required this.productID,
    this.purchaseID,
    required this.status,
  });

  /// Creates an empty [PurchaseDetailsDTO] with default values.
  ///
  /// This factory constructor returns a [PurchaseDetailsDTO] with predefined "empty" values for
  /// [productID], [purchaseID], and a status of [CurrentPurchaseStatus.none].
  factory PurchaseDetailsDTO.empty() {
    return const PurchaseDetailsDTO(
      productID: 'product_empty_id',
      purchaseID: 'purchase_empty_id',
      status: CurrentPurchaseStatus.none,
    );
  }
}
