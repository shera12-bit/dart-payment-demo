import 'payment_gateway.dart';

/// Concrete Implementation B: PayPal-like gateway
class PaypalGateway implements PaymentGateway {
  final String clientId;

  PaypalGateway(this.clientId);

  @override
  void processPayment(String orderId, double amount) {
    // Different format/behavior than Stripe
    print(
      '[ImplB][PaypalGateway] Processing payment of \$${amount.toStringAsFixed(2)} for $orderId using PayPal (client=$clientId)',
    );
    print('[ImplB][PaypalGateway] -> transaction: PAYPAL_TXN_456 (simulated)');
  }

  @override
  void refundPayment(String orderId, double amount) {
    print(
      '[ImplB][PaypalGateway] Issuing refund of \$${amount.toStringAsFixed(2)} for $orderId via PayPal',
    );
    print('[ImplB][PaypalGateway] -> refund_status: completed (simulated)');
  }
}
