part of 'checkout_cubit.dart';

@immutable
class CheckoutState extends Equatable {
  @override
  List<Object?> get props => [quantityCounter, totalPrice, selectedCounter,
 cardNumber,

 expiryDate,
 cardHolderName,

   cvvCode,

   showBackView,
  
  
  
  
  ];
  final String cardNumber;

  final String expiryDate;

  final String cardHolderName;

  final String cvvCode;

  final bool showBackView;
  final int quantityCounter;
  final int totalPrice;
  final int selectedCounter;

  const CheckoutState(

    this.quantityCounter,
    this.totalPrice,
    this.selectedCounter,

    
      this.cardNumber ,
      this.expiryDate ,
      this.cardHolderName ,
      this.cvvCode ,
      this.showBackView ,
    
  );
  copyWith({int? quantityCounter, int? totalPrice, int? selectedCounter , 
    String? cardNumber,
    String? expiryDate,
    String? cardHolderName,
    String? cvvCode,
    bool? showBackView,
  
  
  }) {
    return CheckoutState(
      quantityCounter ?? this.quantityCounter,
      totalPrice ?? this.totalPrice,
      selectedCounter ?? this.selectedCounter,

      cardNumber ?? this.cardNumber,
      expiryDate ?? this.expiryDate,
      cardHolderName ?? this.cardHolderName,
      cvvCode ?? this.cvvCode,
      showBackView ?? this.showBackView,
    );
  }
}
