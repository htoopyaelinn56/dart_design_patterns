// https://refactoring.guru/design-patterns/facade

import 'waiter.dart';

void main() async {
  final waiter = Waiter();

  // Customer places order through waiter
  final bill = await waiter.serveCustomer([
    'Pizza',
    'Beer',
    'Salad',
  ]);

  print('\n🧾 Please pay: \$${bill.toStringAsFixed(2)}');
}
