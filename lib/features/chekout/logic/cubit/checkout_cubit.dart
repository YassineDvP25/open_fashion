import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:meta/meta.dart';

part 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit() : super(CheckoutState(1, 0, 1, '', '', '', '', false));
  quantityCounterIncrement(int price) {
    emit(
      state.copyWith(
        quantityCounter: state.quantityCounter + 1,
        totalPrice: price * (state.quantityCounter + 1),
        selectedCounter: state.quantityCounter,
      ),
    );
  }

  quantityCounterDecrement(int price) {
    if (state.quantityCounter != 1) {
      emit(
        state.copyWith(
          quantityCounter: state.quantityCounter - 1,
          totalPrice: price * (state.quantityCounter - 1),
          selectedCounter: state.quantityCounter,
        ),
      );
    }
  }

  void onCreditCardModelChange(CreditCardModel data) {
    emit(
      state.copyWith(
        cardNumber: data.cardNumber,
        expiryDate: data.expiryDate,
        cardHolderName: data.cardHolderName,
        cvvCode: data.cvvCode,
        showBackView: data.isCvvFocused,
      ),
    );
  }
}
