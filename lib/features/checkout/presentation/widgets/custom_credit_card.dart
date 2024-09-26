import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key, required this.formKey, required this.autoValidateMode});
  final GlobalKey<FormState>formKey;
final AutovalidateMode autoValidateMode;
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}
class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber='',expiryDate='',cardHolderName='',cvvCode='';
  bool showBackView=false;
  final GlobalKey<FormState>formKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,isHolderNameVisible: true,
          onCreditCardWidgetChange:
              (value){}      ),
      CreditCardForm(autovalidateMode:widget.autoValidateMode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (CreditCardModel)
          {
            cardNumber=CreditCardModel.cardNumber;
            expiryDate=CreditCardModel.expiryDate;
            cardHolderName=CreditCardModel.cardHolderName;
            cvvCode=CreditCardModel.cvvCode;
            showBackView=CreditCardModel.isCvvFocused;
            setState(() {            });
          }, formKey:widget.formKey)


    ],);
  }
}
