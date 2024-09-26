import 'package:payment_app/features/checkout/presentation/screens/payment_details_view.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'create_total_price.dart';
import 'order_info_item.dart';
class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/basket_image.png"),
        const SizedBox(
          height: 25,
        ),
        const OrderInfoItem(
          title: 'Order Subtotal',
          price: r'$42.97',
        ),
        const OrderInfoItem(
          title: 'Discount',
          price: r'$0',
        ),
        const OrderInfoItem(
          title: 'Shipping',
          price: r'$8',
        ),
        const Divider(
          thickness: 2,
          color: Color(0xffC7C7C7),
          endIndent: 35,
          indent: 35,
        ),
        const TotalPrice(
          title: "Total",
          price: r"$50.97",
        ),
        const SizedBox(
          height: 6,
        ),
         CustomButton(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
           return const PaymentDetailsView();
         }));},
          title: "Complete Payment",
        )
      ],
    );
  }
}
