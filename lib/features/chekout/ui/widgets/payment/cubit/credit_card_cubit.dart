import 'package:bloc/bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

part 'credit_card_state.dart';

class CreditCardCubit extends Cubit<CreditCardState> {
  CreditCardCubit() : super(CreditCardInitial());

  void onCreditCardModelChange (CreditCardModel data) {
    emit(
      CreditCardInitial(
        cardNumber: data.cardNumber,
        expiryDate: data.expiryDate,
        cardHolderName: data.cardHolderName,
        cvvCode: data.cvvCode,
        showBackView: data.isCvvFocused,
      ),
    );
  }
}
