import 'package:flutter/material.dart';
import 'features/checkout/presentation/screens/my_cart_view.dart';

void main() {
  runApp(const PaymentApp());
}

class PaymentApp extends StatelessWidget {
  const PaymentApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "PaymentApp",
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}
