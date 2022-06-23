import 'package:equatable/equatable.dart';

class TransactionModel extends Equatable {
  final String image;
  final String name;
  final DateTime time;
  final double amount;
  final String currency;
  final String symbol;

  const TransactionModel({
    required this.image,
    required this.name,
    required this.time,
    required this.amount,
    required this.currency,
    required this.symbol,
  });

  @override
  List<Object?> get props => [
        image,
        name,
        time,
        amount,
        currency,
        symbol,
      ];
}
