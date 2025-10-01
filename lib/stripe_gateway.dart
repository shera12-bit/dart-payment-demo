import 'payment_gateway.dart';

/// Concrete Implementation A: Stripe-like gateway
class StripeGateway implements PaymentGateway {
  final String apiKey;

  StripeGateway(this.apiKey);

  @override
  void processPayment(String orderId, double amount) {
    // Different behavior (format + extra info)
    print(
      '[ImplA][StripeGateway] Charging \$${amount.toStringAsFixed(2)} for order $orderId via Stripe (apiKey=$apiKey)',
    );
    print('[ImplA][StripeGateway] -> status: succeeded (simulated)');
  }

  @override
  void refundPayment(String orderId, double amount) {
    print(
      '[ImplA][StripeGateway] Refunding \$${amount.toStringAsFixed(2)} for order $orderId via Stripe',
    );
    print('[ImplA][StripeGateway] -> refund_id: rft_STRIPE_123 (simulated)');
  }
}
