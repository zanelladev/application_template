import 'package:in_app_purchase/in_app_purchase.dart';

import '../purchase_details_dto.dart';
import 'enums/purchase_status_adapter.dart';

class PurchaseDetailsAdapter {
  ///Transform [PurchaseDetails] into [PurchaseDetailsDTO]
  static PurchaseDetailsDTO fromPurchaseDetails(PurchaseDetails details) {
    return PurchaseDetailsDTO(
      productID: details.productID,
      purchaseID: details.purchaseID,
      status: PurchaseStatusAdapter.fromPurchase(details),
    );
  }
}
