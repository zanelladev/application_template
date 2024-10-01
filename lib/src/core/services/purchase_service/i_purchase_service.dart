import 'dtos/purchase_details_dto.dart';

/// An interface for a purchase service that handles buying products from a store.
///
/// This service provides methods for purchasing both consumable and non-consumable products,
/// as well as a property to check the availability of the store.
abstract interface class IPurchaseService {
  /// Buys a consumable product from the store using the given [productId].
  ///
  /// This method returns a [Stream] of [PurchaseDetailsDTO] which contains the details of the purchase.
  ///
  /// - Parameter productId: The ID of the product to be purchased.
  /// - Returns: A [Stream] of [PurchaseDetailsDTO] with the purchase details.
  Stream<PurchaseDetailsDTO> buyConsumable(String productId);

  /// Buys a non-consumable product from the store using the given [productId].
  ///
  /// This method returns a [Stream] of [PurchaseDetailsDTO] which contains the details of the purchase.
  ///
  /// - Parameter productId: The ID of the product to be purchased.
  /// - Returns: A [Stream] of [PurchaseDetailsDTO] with the purchase details.
  Stream<PurchaseDetailsDTO> buyNonConsumable(String productId);

  /// Checks if the store (PlayStore or AppStore) is available to purchase products in this application.
  ///
  /// This method returns a [Future] that resolves to a boolean value indicating the availability of the store.
  ///
  /// - Returns: A [Future] that resolves to `true` if the store is available, otherwise `false`.
  Future<bool> get isStoreAvailable;
}
