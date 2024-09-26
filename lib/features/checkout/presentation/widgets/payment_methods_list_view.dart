import 'package:flutter/material.dart';
import 'package:payment_app/features/cubit/payment_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_payment_method.dart';

class PaymentMethodsListView extends StatelessWidget {
  const PaymentMethodsListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PaymentCubit(),
      child: BlocBuilder<PaymentCubit, PaymentState>(
        builder: (context, state) {
          final cubit = PaymentCubit.get(context);
          int activeIndex = cubit.currentIndex;
          if (state is SelectedPaymentState) {
            activeIndex = state.indexx;
          }
          return SizedBox(
            height: 62,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cubit.images.length,
                itemBuilder: (context, index) {
                  return CustomPaymentMethod(
                    onTap: () {
                      cubit.selectItem(index);
                    },
                    isActive: activeIndex == index,
                    image: cubit.images[index],
                  );
                }),
          );
        },
      ),
    );
  }
}
