// waiter as facade
import 'sub_system/bar.dart';
import 'sub_system/cashier.dart';
import 'sub_system/kitchen.dart';

class Waiter {
  final Kitchen _kitchen = Kitchen();
  final Bar _bar = Bar();
  final Cashier _cashier = Cashier();

  final Map<String, double> _menu = {
    'Burger': 12.99,
    'Pizza': 15.99,
    'Salad': 8.99,
    'Beer': 5.99,
    'Wine': 7.99,
    'Soda': 2.99,
  };

  Future<double> serveCustomer(List<String> order) async {
    print('\n📝 Taking order: ${order.join(", ")}');

    Map<String, double> orderedItems = {};

    for (final item in order) {
      if (_menu.containsKey(item)) {
        orderedItems[item] = _menu[item]!;

        // Determine where to send the order
        if (['Beer', 'Wine', 'Soda'].contains(item)) {
          await _bar.makeDrink(item);
        } else {
          await _kitchen.cookFood(item);
        }
      } else {
        print('❌ Sorry, $item is not on the menu');
      }
    }

    print('\n🍽️  All items are ready! Serving now...');

    // Calculate bill
    return _cashier.calculateBill(orderedItems);
  }
}