part of 'credit_card_cubit.dart';

sealed class CreditCardState {
  final String cardNumber;

  final String expiryDate;

  final String cardHolderName;

  final String cvvCode;

  final bool showBackView;
  const CreditCardState({
    this.cardNumber = '',
    this.expiryDate = '',
    this.cardHolderName = '',
    this.cvvCode = '',
    this.showBackView = false,
  });

}

final class CreditCardInitial extends CreditCardState {


  const CreditCardInitial({
    super.cardNumber,
    super.expiryDate,
    super.cardHolderName,
    super.cvvCode,
    super.showBackView,
  });
  
}
