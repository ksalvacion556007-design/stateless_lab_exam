import 'package:flutter/material.dart';

const Color primaryBlue = Color(0xFF2164ED);
const Color darkNavy = Color(0xFF101D46);
const Color lightBlue = Color(0xFFDCEBFF);
const Color pageBackground = Color(0xFFF4F6FB);
const Color borderColor = Color(0xFFE0E5EF);
const Color secondaryText = Color(0xFF65708A);

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 480),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    debugPrint('Back clicked');
                  },
                  icon: const Icon(Icons.arrow_back, color: darkNavy),
                ),
                const SizedBox(width: 5),
                const Expanded(
                  child: Text(
                    'My Cart',
                    style: TextStyle(
                      color: darkNavy,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    IconButton(
                      onPressed: () {
                        debugPrint('Cart clicked');
                      },
                      icon: const Icon(
                        Icons.shopping_bag_outlined,
                        color: darkNavy,
                        size: 27,
                      ),
                    ),
                    Positioned(
                      top: 2,
                      right: 2,
                      child: Container(
                        width: 17,
                        height: 17,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: primaryBlue,
                          shape: BoxShape.circle,
                        ),
                        child: const Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 480),
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(14, 14, 14, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 7,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: lightBlue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      'CAMPUS STORE',
                      style: TextStyle(
                        color: primaryBlue,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 7),
                  const Text(
                    'Ready for checkout',
                    style: TextStyle(
                      color: darkNavy,
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Review your items before placing your order.',
                    style: TextStyle(color: secondaryText, fontSize: 12),
                  ),
                  const SizedBox(height: 14),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: borderColor),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: primaryBlue,
                          size: 23,
                        ),
                        const SizedBox(width: 11),
                        Container(width: 1, height: 35, color: borderColor),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Deliver to Katherynne Rylle L. Salvacion',
                                style: TextStyle(
                                  color: darkNavy,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                'Matina, Davao City',
                                style: TextStyle(
                                  color: secondaryText,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 5),
                        TextButton(
                          onPressed: () {
                            debugPrint('Change delivery address clicked');
                          },
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            minimumSize: const Size(0, 36),
                          ),
                          child: const Text(
                            'Change',
                            style: TextStyle(
                              color: primaryBlue,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Order Items',
                        style: TextStyle(
                          color: darkNavy,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '3 items',
                        style: TextStyle(color: secondaryText, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(height: 9),
                  const CartItemCard(
                    productName: 'Wireless Mouse',
                    price: 'PHP 450.00',
                    quantity: 1,
                    icon: Icons.mouse_outlined,
                  ),
                  const SizedBox(height: 8),
                  const CartItemCard(
                    productName: 'USB-C Hub',
                    price: 'PHP 850.00',
                    quantity: 1,
                    icon: Icons.usb,
                  ),
                  const SizedBox(height: 8),
                  const CartItemCard(
                    productName: 'Laptop Stand',
                    price: 'PHP 700.00',
                    quantity: 1,
                    icon: Icons.laptop_mac,
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 11,
                    ),
                    decoration: BoxDecoration(
                      color: lightBlue,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.local_offer_outlined,
                          color: primaryBlue,
                          size: 22,
                        ),
                        const SizedBox(width: 12),
                        Container(
                          width: 1,
                          height: 30,
                          color: const Color(0xFFB5C9E9),
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'STUDENT10 applied',
                                style: TextStyle(
                                  color: Color(0xFF12439B),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                '10% discount on items',
                                style: TextStyle(
                                  color: secondaryText,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.check_circle,
                          color: primaryBlue,
                          size: 23,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: borderColor),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Payment Summary',
                          style: TextStyle(
                            color: darkNavy,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 11),
                        SummaryRow(label: 'Subtotal', amount: 'PHP 2,000.00'),
                        SizedBox(height: 7),
                        SummaryRow(
                          label: 'Discount (10%)',
                          amount: '- PHP 200.00',
                        ),
                        SizedBox(height: 7),
                        SummaryRow(label: 'Delivery Fee', amount: 'PHP 50.00'),
                        SizedBox(height: 10),
                        Divider(color: borderColor, height: 1),
                        SizedBox(height: 10),
                        SummaryRow(
                          label: 'Total',
                          amount: 'PHP 1,850.00',
                          isTotal: true,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 11),
                  SizedBox(
                    width: double.infinity,
                    height: 47,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        debugPrint('Place order clicked! Total: PHP 1850.00');
                      },
                      icon: const Icon(
                        Icons.lock,
                        color: Colors.white,
                        size: 18,
                      ),
                      label: const Text(
                        'Place Order',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryBlue,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CartItemCard extends StatelessWidget {
  final String productName;
  final String price;
  final int quantity;
  final IconData icon;

  const CartItemCard({
    super.key,
    required this.productName,
    required this.price,
    required this.quantity,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 59,
            height: 59,
            decoration: BoxDecoration(
              color: lightBlue,
              borderRadius: BorderRadius.circular(9),
            ),
            child: Icon(icon, color: const Color(0xFF124A9B), size: 35),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                    color: darkNavy,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  price,
                  style: const TextStyle(
                    color: primaryBlue,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    QuantityButton(
                      icon: Icons.remove,
                      onPressed: () {
                        debugPrint('Decrease quantity: $productName');
                      },
                    ),
                    Container(
                      width: 40,
                      height: 25,
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: borderColor),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        '$quantity',
                        style: const TextStyle(
                          color: darkNavy,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    QuantityButton(
                      icon: Icons.add,
                      onPressed: () {
                        debugPrint('Increase quantity: $productName');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              debugPrint('Remove item: $productName');
            },
            icon: const Icon(
              Icons.delete_outline,
              color: Color(0xFF626B7C),
              size: 21,
            ),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 28, minHeight: 28),
          ),
        ],
      ),
    );
  }
}

class QuantityButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const QuantityButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      height: 25,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          side: const BorderSide(color: primaryBlue, width: 1.3),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Icon(icon, color: primaryBlue, size: 16),
      ),
    );
  }
}

class SummaryRow extends StatelessWidget {
  final String label;
  final String amount;
  final bool isTotal;

  const SummaryRow({
    super.key,
    required this.label,
    required this.amount,
    this.isTotal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: darkNavy,
            fontSize: isTotal ? 15 : 12,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          amount,
          style: TextStyle(
            color: darkNavy,
            fontSize: isTotal ? 15 : 12,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
