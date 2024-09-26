import 'package:payment_app/core/utils/styles_app.dart';
import 'package:flutter/material.dart';
import '../widgets/payment_details_body.dart';
class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
        return    Scaffold(
          appBar:AppBar(
            centerTitle: true,leading:  IconButton(icon:const Icon(Icons.arrow_back),onPressed: (){Navigator.pop(context);},),
            title: Text(
              "Payment Details",
              textAlign: TextAlign.center,
              style: StylesApp.text25,
            ),
          ),          body: const PaymentDetailsBody(),
        );
  }
}
