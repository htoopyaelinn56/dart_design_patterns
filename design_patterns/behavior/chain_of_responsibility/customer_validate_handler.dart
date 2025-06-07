import 'order_payload.dart';
import 'order_service_handler.dart';

class CustomerValidateHandler extends OrderServiceHandler {
  final validCustomers = <int>{1, 2, 3};

  CustomerValidateHandler({super.handlers = const []});

  @override
  bool check(OrderPayload payload) {
    return validCustomers.contains(payload.customerId);
  }
}
