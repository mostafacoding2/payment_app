import 'package:payment_app/features/checkout/presentation/widgets/custom_button.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_credit_card.dart';
import 'package:flutter/material.dart';
import '../screens/payment_done_view.dart';
import 'payment_methods_list_view.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});
  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: PaymentMethodsListView()),
        SliverToBoxAdapter(
            child: CustomCreditCard(
          autoValidateMode: autoValidateMode,
          formKey: formKey,
        )),
        SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top:18.0,bottom: 18),
                child: CustomButton(
                    title: "Pay",
                    onTap: () {

                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                      } else {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return const PaymentDoneView();
                        }));
                        autoValidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    }),
              ),
            )),
      ],
    );
  }
}
