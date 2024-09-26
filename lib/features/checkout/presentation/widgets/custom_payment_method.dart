import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CustomPaymentMethod extends StatelessWidget {
  const CustomPaymentMethod(
      {super.key, this.isActive = false, required this.image, this.onTap});
  final bool isActive;
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: AnimatedContainer(
          width: 103,
          height: 62,
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: isActive
                        ? const Color(0xff34A853)
                        : const Color.fromRGBO(0, 0, 0, 0.2),
                    blurRadius: 4,
                    spreadRadius: 0,
                    offset: const Offset(0, 0))
              ],
              border: Border.all(
                  width: 1.5,
                  color: isActive
                      ? const Color.fromRGBO(52, 168, 83, 1)
                      : const Color.fromRGBO(0, 0, 0, 0.5)),
              borderRadius: BorderRadius.circular(15)),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: SvgPicture.asset(image,fit: BoxFit.scaleDown,),
          ),
        ),
      ),
    );
  }
}
