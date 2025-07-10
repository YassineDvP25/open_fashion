part of 'checkout_cubit.dart';

@immutable
class CheckoutState extends Equatable {
  @override
  List<Object?> get props => [quantityCounter, totalPrice, selectedCounter];
  final int quantityCounter;
  final int totalPrice;
  final int selectedCounter;

  const CheckoutState(
    this.quantityCounter,
    this.totalPrice,
    this.selectedCounter,
  );
  copyWith({int? quantityCounter, int? totalPrice, int? selectedCounter}) {
    return CheckoutState(
      quantityCounter ?? this.quantityCounter,
      totalPrice ?? this.totalPrice,
      selectedCounter ?? this.selectedCounter,
    );
  }
}
