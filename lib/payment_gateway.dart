/// PaymentGateway interface (abstract contract)
abstract class PaymentGateway {
  /// Process a payment for orderId of amount.
  void processPayment(String orderId, double amount);

  /// Refund a payment for orderId of amount.
  void refundPayment(String orderId, double amount);
}
