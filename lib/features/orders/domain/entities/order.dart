class Order {
  final int id;
  final String address;

  // we expect list of products
  //final List<Product> products;
  final String products;
  final String orderStatus;
  final String totalPrice;

  const Order({
    required this.id,
    required this.address,
    required this.products,
    required this.orderStatus,
    required this.totalPrice,
  });
}
