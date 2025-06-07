import 'order_payload.dart';
import 'order_service_handler.dart';

class OrderProcessHandler extends OrderServiceHandler {
  OrderProcessHandler({super.handlers = const []});

  @override
  bool check(OrderPayload payload) {
    // call order process api
    return true;
  }
}
