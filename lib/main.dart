import 'payment_service.dart';
import 'stripe_gateway.dart';
import 'paypal_gateway.dart';
import 'mock_gateway.dart';

void main() {
  // 1) StripeGateway
  print('--- Demo: PaymentService with StripeGateway ---');
  final stripe = StripeGateway('sk_test_ABC123');
  var service = PaymentService(stripe);
  service.checkout('ORD-1001', 49.99);

  // 2) PaypalGateway
  print('\n--- Demo: PaymentService with PaypalGateway ---');
  final paypal = PaypalGateway('client-XYZ');
  service = PaymentService(paypal);
  service.checkout('ORD-2002', 19.50);

  // 3) MockGateway
  print('\n--- Demo: PaymentService with MockGateway ---');
  final mock = MockGateway();
  service = PaymentService(mock);
  service.checkout('ORD-3003', 0.01);
}
