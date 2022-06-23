import 'package:equatable/equatable.dart';

class WalletModel extends Equatable {
  final String image;
  final double amount;
  final String currency;
  final String symbol;

  const WalletModel({
    required this.image,
    required this.amount,
    required this.currency,
    required this.symbol,
  });

  @override
  List<Object?> get props => [
        image,
        amount,
        currency,
        symbol,
      ];
}
