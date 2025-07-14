import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';
import 'package:open__fashion__app/features/chekout/logic/cubit/checkout_cubit.dart';

class CreditCardeWidget extends StatelessWidget {
  final void Function(CreditCardBrand) onCreditCardWidgetChange;
  const CreditCardeWidget({super.key, required this.onCreditCardWidgetChange});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckoutCubit, CheckoutState>(
      builder: (context, state) {
        return CreditCardWidget(
          
          backgroundImage: 'assets/images/1.jpeg',
          
          enableFloatingCard: true,
          cardNumber: state.cardNumber,
          expiryDate: state.expiryDate,
          cardHolderName: state.cardHolderName,
          cvvCode: state.cvvCode,
          showBackView: state.showBackView,
          isHolderNameVisible: true,
          onCreditCardWidgetChange: onCreditCardWidgetChange,
          
          cardBgColor: AppColors.mainBlack,
          
        );
      },
    );
  }
}
