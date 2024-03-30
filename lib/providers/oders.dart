import 'package:flutter/material.dart';
import 'package:shop2/providers/cart.dart';

class OrderItem {
  final String id;
  final double amount;
  final List<CartItem> orderedProducts;
  final DateTime datetime;

  OrderItem({
    required this.id,
    required this.amount,
    required this.orderedProducts,
    required this.datetime,
  }) {
    // TODO: implement OrderItem
    throw UnimplementedError();
  }
}

class Oders with ChangeNotifier {
  List<OrderItem> _orders = [];

  List<OrderItem> get orders {
    return [..._orders];
  }

  void addOder(List<CartItem> cartProducts, double total) {
    _orders.add(OrderItem(
      amount: total,
      datetime: DateTime.now(),
      id: DateTime.now().toString(),
      orderedProducts: cartProducts,
    ));

    notifyListeners();
  }

  void clearAll() {
    _orders = [];
    notifyListeners();
  }
}
