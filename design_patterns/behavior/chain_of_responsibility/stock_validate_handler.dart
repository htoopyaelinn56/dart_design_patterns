import 'order_payload.dart';
import 'order_service_handler.dart';

class StockValidateHandler extends OrderServiceHandler {
  // stock is refilled everytime
  final inStockProducts = <String, int>{
    'cola': 10,
    'juice': 5,
    'pizza': 20,
    'pasta': 30,
  };

  StockValidateHandler({super.handlers = const []});

  @override
  bool check(OrderPayload payload) {
    for (final i in payload.products.entries) {
      if (inStockProducts[i.key] == null) {
        return false;
      } else if (inStockProducts[i.key]! < i.value) {
        return false;
      }
    }
    return true;
  }
}
