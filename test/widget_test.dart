import 'package:flutter_test/flutter_test.dart';
import 'package:salvacion_lab3/main.dart';

void main() {
  testWidgets('Campus Store Shopping Cart Test', (WidgetTester tester) async {
    await tester.pumpWidget(const CampusStoreApp());

    expect(find.text('My Cart'), findsOneWidget);
    expect(find.text('Ready for checkout'), findsOneWidget);
    expect(find.text('Order Items'), findsOneWidget);
    expect(find.text('Wireless Mouse'), findsOneWidget);
    expect(find.text('USB-C Hub'), findsOneWidget);
    expect(find.text('Laptop Stand'), findsOneWidget);
    expect(find.text('PHP 1,850.00'), findsOneWidget);
    expect(find.text('Place Order'), findsOneWidget);
  });
}
