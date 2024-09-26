import 'package:payment_app/core/utils/styles_app.dart';
import 'package:payment_app/features/checkout/presentation/widgets/create_total_price.dart';
import 'package:payment_app/features/checkout/presentation/widgets/order_info_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentDoneBody extends StatelessWidget {
  const PaymentDoneBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50, bottom: 15, left: 20),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 34,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        Container(
          clipBehavior: Clip.none,
          margin: const EdgeInsets.only(left: 20, right: 20, top: 120),
          decoration: BoxDecoration(
              color: const Color(0xffEDEDED),
              borderRadius: BorderRadius.circular(20)),
        ),
        Positioned(
            left: 150,
            bottom: 640,
            child: Container(
              clipBehavior: Clip.none,
              decoration: BoxDecoration(
                  color: const Color(0xffEDEDED),
                  borderRadius: BorderRadius.circular(360)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  clipBehavior: Clip.none,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(360)),
                  child: const Icon(Icons.check, size: 70, color: Colors.white),
                ),
              ),
            )),
        Positioned(
            top: 170,
            left: 125,
            child: Text(
              'Thank you!',
              style: StylesApp.text25,
            )),
        Positioned(
            top: 210,
            left: 40,
            child: Text(
              'Your transaction was successful',
              style: StylesApp.text20,
            )),
        const Positioned(
          top: 260,
          left: 10,
          right: 10,
          child: OrderInfoItem(
            title: 'Date',
            price: "01/24/2023",
          ),
        ),
        const Positioned(
          top: 300,
          left: 10,
          right: 10,
          child: OrderInfoItem(
            title: 'Time',
            price: '10:15 AM',
          ),
        ),
        const Positioned(
          top: 340,
          left: 10,
          right: 10,
          child: OrderInfoItem(
            title: 'To',
            price: 'Sam Louis',
          ),
        ),
        const Positioned(
          top: 390,
          left: 10,
          right: 10,
          child: TotalPrice(
            title: "Total",
            price: r"$50.97",
          ),
        ),
        const Positioned(
          top: 450,
          left: 10,
          right: 10,
          child: Divider(
            thickness: 2,
            color: Color(0xffC7C7C7),
            endIndent: 35,
            indent: 35,
          ),
        ),
        Positioned(
            top: 480,
            left: 43,
            right: 43,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 22,
                  ),
                  SvgPicture.asset(
                    "assets/images/master_card.svg",
                    fit: BoxFit.fill,
                    height: 21,
                    width: 35,
                  ),
                  const SizedBox(
                    width: 22,
                  ),
                  Expanded(
                      child: ListTile(
                    title: Text(
                      'Credit Card',
                      style: StylesApp.text20,
                    ),
                    subtitle: Text(
                      'Mastercard **78',
                      style: StylesApp.text18,
                    ),
                  ))
                ],
              ),
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.75,
            left: -8,
            child: const CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
            )),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.75,
            right: -8,
            child: const CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
            )),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.78,
          left: 42,
          right: 42,
          child: Row(
              children: List.generate(
                  20,
                  (context) => Expanded(
                          child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        height: 2,
                        color: const Color(0xffB8B8B8),
                      )))),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.85,
          left: 42,
          right: 42,
          child: Row(
            children: [
              Icon(FontAwesomeIcons.barcode,size: 55,),SizedBox(width: 10,),
              Icon(FontAwesomeIcons.barcode,size: 55,),SizedBox(width: 50,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      width: 1.5, color: Color.fromRGBO(52, 168, 83, 1)),
                ),
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 29),
                child: Text(
                  "PAID",
                  style: StylesApp.text25g,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
