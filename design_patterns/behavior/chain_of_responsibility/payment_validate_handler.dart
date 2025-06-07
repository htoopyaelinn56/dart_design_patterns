import 'order_payload.dart';
import 'order_service_handler.dart';

class PaymentValidateHandler extends OrderServiceHandler {
  PaymentValidateHandler({super.handlers = const []});

  @override
  bool check(OrderPayload payload) {
    // in real world scenario, checking 3rd party or own api for payment
    return true;
  }
}
