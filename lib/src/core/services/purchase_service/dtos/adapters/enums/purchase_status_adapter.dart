import 'package:in_app_purchase/in_app_purchase.dart';

import '../../enums/current_purchase_status.dart';

///Adapter for [CurrentPurchaseStatus]
class PurchaseStatusAdapter {
  ///Transform [PurchaseStatus] into [CurrentPurchaseStatus]
  static CurrentPurchaseStatus fromPurchase(PurchaseDetails details) {
    final isPurchaseAlreadyDone = _isPurchaseAlreadyDone(details);

    if (isPurchaseAlreadyDone) return CurrentPurchaseStatus.purchased;

    return CurrentPurchaseStatus.values.firstWhere(
      (e) => e.name == details.status.name,
      orElse: () => CurrentPurchaseStatus.none,
    );
  }

  ///Method responsible to check if purchase was already done
  static bool _isPurchaseAlreadyDone(PurchaseDetails details) {
    final isErrorStatus = details.status == PurchaseStatus.error;
    final isAlreadyOwnedMessage = details.pendingCompletePurchase;

    return isErrorStatus && isAlreadyOwnedMessage;
  }
}
