import 'package:flutter/material.dart';

import '../widgets/payment_done_body.dart';
class PaymentDoneView extends StatelessWidget {
  const PaymentDoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(backgroundColor: Colors.white,
      body: PaymentDoneBody(),
    );
  }
}
