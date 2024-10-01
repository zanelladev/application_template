import 'dart:async';

import 'package:in_app_purchase/in_app_purchase.dart';

import '../../../errors/app_error.dart';
import '../../../extensions/list_extensions.dart';
import '../dtos/adapters/purchase_details_adapter.dart';
import '../dtos/purchase_details_dto.dart';
import '../exceptions/purchase_exceptions.dart';
import '../i_purchase_service.dart';

class InAppPurchaseService implements IPurchaseService {
  final InAppPurchase _inApp;
  late StreamSubscription<List<PurchaseDetails>> _subscription;

  InAppPurchaseService(this._inApp) {
    _cancelPendingPurchases();
  }

  @override
  Stream<PurchaseDetailsDTO> buyConsumable(String productId) async* {
    try {
      final details = await _getProductDetails(productId);
      final params = PurchaseParam(productDetails: details);

      await _inApp.buyConsumable(purchaseParam: params);

      final asyncMapPurchases = await _asyncMapPurchase();
      yield* asyncMapPurchases.handleError(_handleBuyProductError);
    } on AppException {
      rethrow;
    } on InAppPurchaseException catch (error, stackTrace) {
      throw FailPurchaseException(
        message: error.message ?? '',
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Stream<PurchaseDetailsDTO> buyNonConsumable(String productId) async* {
    try {
      final details = await _getProductDetails(productId);
      final params = PurchaseParam(productDetails: details);

      await _inApp.buyNonConsumable(purchaseParam: params);

      final asyncMapPurchases = await _asyncMapPurchase();
      yield* asyncMapPurchases.handleError(_handleBuyProductError);
    } on AppException {
      rethrow;
    } on InAppPurchaseException catch (error, stackTrace) {
      throw FailPurchaseException(
        message: error.message ?? '',
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<bool> get isStoreAvailable => _inApp.isAvailable();

  void _cancelPendingPurchases() {
    _subscription = _inApp.purchaseStream.listen((List<PurchaseDetails> purchases) {
      purchases.iterate(_inApp.completePurchase);
    });
  }

  Future<ProductDetails> _getProductDetails(String productId) async {
    try {
      final response = await _inApp.queryProductDetails({productId});
      return response.productDetails.first;
    } on InAppPurchaseException catch (error, stackTrace) {
      throw GetProductPurchaseException(
        message: error.message ?? '',
        stackTrace: stackTrace,
      );
    }
  }

  Future<Stream<PurchaseDetailsDTO>> _asyncMapPurchase() async {
    return _inApp.purchaseStream.asyncMap((purchases) async {
      final purchase = purchases.last;

      if (purchase.pendingCompletePurchase) {
        await _inApp.completePurchase(purchase);
      }

      return PurchaseDetailsAdapter.fromPurchaseDetails(purchase);
    });
  }

  void _handleBuyProductError(Exception error, StackTrace stackTrace) {
    if (error is InAppPurchaseException) {
      throw FailPurchaseException(
        message: error.message ?? '',
        stackTrace: stackTrace,
      );
    }
  }

  /// cancel purchase stream listener
  Future<void> cancelPurchaseStream() async {
    await _subscription.cancel();
  }
}
