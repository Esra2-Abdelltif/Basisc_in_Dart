main() {
  final pp = PayPal();
  final cc = CreditCard();
  final bc = BlockChin();
  final sc =
  ShoppingCart(discount: 0.0, items: [], total: 0.0, paymentMethod: pp);
  sc.processPayment();
}

class ShoppingCart {
  final List items;
  final double discount;
  final double total;
  final PayMethod paymentMethod;

  ShoppingCart({required this.items,required this.discount,required this.total,required this.paymentMethod});

  processPayment() {
    paymentMethod.pay();
  }
}

abstract class PayMethod {
  bool pay();
}

class PayPal implements PayMethod {
  late String Email,password;
  @override
  bool pay() {
    print("PayPal Payment");
    return true;
  }
}

class CreditCard implements PayMethod {
  late String CCV;
  @override
  bool pay() {
    print("CreditCard Payment");
    return true;
  }
}

class BlockChin implements PayMethod {
  late String token;
  @override
  bool pay() {
    print("BlockChin Payment");
    return true;
  }
}