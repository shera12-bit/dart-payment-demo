import 'payment_gateway.dart';

/// Consumer: depends only on PaymentGateway (constructor injection).
class PaymentService {
  final PaymentGateway gateway;

  PaymentService(this.gateway);

  /// Calls the gateway to process payment.
  void checkout(String orderId, double amount) {
    print(
      '[Consumer] checkout($orderId, \$${amount.toStringAsFixed(2)}) -> calling gateway...',
    );
    gateway.processPayment(orderId, amount);
    print('[Consumer] checkout finished for $orderId\n');
  }

  /// Calls the gateway to refund payment.
  void refund(String orderId, double amount) {
    print(
      '[Consumer] refund($orderId, \$${amount.toStringAsFixed(2)}) -> calling gateway...',
    );
    gateway.refundPayment(orderId, amount);
    print('[Consumer] refund finished for $orderId\n');
  }
}
