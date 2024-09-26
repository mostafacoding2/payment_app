import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles_app.dart';

import '../widgets/custom_appBar_payment.dart';
import '../widgets/my_cart_view_body.dart';
class MyCartView extends StatelessWidget {
  const MyCartView({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        centerTitle: true,leading:  IconButton(icon:const Icon(Icons.arrow_back),onPressed: (){},),
        title: Text(
          "My Cart",
          textAlign: TextAlign.center,
          style: StylesApp.text25,
        ),
      ),
      body: const Column(
        children: [
            MyCartViewBody(),

        ],
      ),
    );
  }
}
