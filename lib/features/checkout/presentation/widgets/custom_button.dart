import 'package:payment_app/core/utils/styles_app.dart';
import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title,required this.onTap});
  final String title;
 final void Function()?onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap:onTap,
      child: Container(margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xff34A853),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
          child: Center(
            child: Text(
              title,
              style: StylesApp.text22,
            ),
          ),
        ),
      ),
    );
  }
}
