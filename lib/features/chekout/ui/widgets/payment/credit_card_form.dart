import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:open__fashion__app/features/chekout/ui/widgets/payment/cubit/credit_card_cubit.dart';

class CreditCardeForm extends StatelessWidget {
  final GlobalKey<FormState> formKey ;
  const CreditCardeForm({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreditCardCubit, CreditCardState>(
      builder: (context, state) {
        return CreditCardForm(
          inputConfiguration: InputConfiguration(
            expiryDateTextStyle: TextStyle(fontFamily: 'RobotoSlab', fontSize: 14),

          ),
          
          cardNumber: state.cardNumber,
          expiryDate: state.expiryDate,
          cardHolderName: state.cardHolderName,
          cvvCode: state.cvvCode,

          onCreditCardModelChange: (CreditCardModel data) {
            context.read<CreditCardCubit>().onCreditCardModelChange(data);
          },
          formKey: formKey,
        );
      },
    );
  }
}
