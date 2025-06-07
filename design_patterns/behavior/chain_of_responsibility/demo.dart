// https://refactoring.guru/design-patterns/chain-of-responsibility

import 'customer_validate_handler.dart';
import 'order_payload.dart';
import 'order_process_handler.dart';
import 'order_service_handler.dart';
import 'payment_validate_handler.dart';
import 'stock_validate_handler.dart';

void main() {
  final OrderServiceHandler orderProcessor = OrderProcessHandler(
    handlers: [
      CustomerValidateHandler(),
      StockValidateHandler(),
      PaymentValidateHandler(),
    ],
  );

  final orderPayload = OrderPayload(customerId: 1, products: {'cola': 10});
  print(orderProcessor.execute(orderPayload));

  final orderPayloadSecond = OrderPayload(
    customerId: 10,
    products: {'cola': 10},
  );
  print(orderProcessor.execute(orderPayloadSecond));
}
