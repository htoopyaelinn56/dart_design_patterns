import 'order_payload.dart';

abstract class OrderServiceHandler {
  final List<OrderServiceHandler> handlers;

  OrderServiceHandler({required this.handlers});

  bool check(OrderPayload payload);

  bool execute(OrderPayload payload) {
    for (final i in handlers) {
      final check = i.check(payload);
      if (!check) {
        return false;
      }
    }
    return true;
  }
}
