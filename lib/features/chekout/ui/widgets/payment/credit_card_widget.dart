import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:open__fashion__app/core/theming/colors/app_colors.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/payment/cubit/credit_card_cubit.dart';

class CreditCardeWidget extends StatelessWidget {
  const CreditCardeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreditCardCubit, CreditCardState>(
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
          onCreditCardWidgetChange: (s) {},
          cardBgColor: AppColors.mainBlack,
        );
      },
    );
  }
}
