class OrderPayload {
  final int customerId;
  final Map<String, int> products;

  OrderPayload({required this.customerId, required this.products});
}
