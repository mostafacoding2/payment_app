import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
part 'payment_state.dart';
class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(PaymentInitial());

  static PaymentCubit get(context)=>BlocProvider.of(context);
int currentIndex=0;
  final List<String> images = [
    "assets/images/card.svg",
    "assets/images/paypal.svg",
    "assets/images/SVGRepo_iconCarrier.svg"
  ];
  void selectItem(int index){
    currentIndex=index;
   emit( SelectedPaymentState(currentIndex));
  }
}
