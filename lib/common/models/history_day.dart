import 'package:bind_test/common/models/transaction.dart';
import 'package:equatable/equatable.dart';

class HistoryDayModel extends Equatable {
  final DateTime date;
  final List<TransactionModel> transactions;

  const HistoryDayModel({
    required this.date,
    required this.transactions,
  });

  @override
  List<Object?> get props => [
        date,
        transactions,
      ];
}
