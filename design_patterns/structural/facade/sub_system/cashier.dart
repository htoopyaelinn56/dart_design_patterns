class Cashier {
  double calculateBill(Map<String, double> items) {
    final total = items.values.reduce((a, b) => a + b);
    print('💰 Cashier: Total bill is \$${total.toStringAsFixed(2)}');
    return total;
  }
}