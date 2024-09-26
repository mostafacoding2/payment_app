part of 'payment_cubit.dart';

@immutable
abstract class PaymentState {}

 class PaymentInitial extends PaymentState {}
 class SelectedPaymentState extends PaymentState {
  final int indexx;
  SelectedPaymentState(this.indexx);
 }
