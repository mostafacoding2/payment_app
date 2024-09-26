import 'package:payment_app/core/utils/styles_app.dart';
import 'package:flutter/material.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.price});
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: StylesApp.text24,
            textAlign: TextAlign.center,
          ),
          Text(price, style: StylesApp.text24, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
