import 'payment_gateway.dart';

/// Mock implementation useful for tests or CI demos.
class MockGateway implements PaymentGateway {
  @override
  void processPayment(String orderId, double amount) {
    print(
      '[Mock][MockGateway] Recorded processPayment for $orderId amount \$${amount.toStringAsFixed(2)} (no real call)',
    );
  }

  @override
  void refundPayment(String orderId, double amount) {
    print(
      '[Mock][MockGateway] Recorded refundPayment for $orderId amount \$${amount.toStringAsFixed(2)} (no real call)',
    );
  }
}
