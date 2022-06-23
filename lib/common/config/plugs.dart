import 'package:bind_test/common/models/history_day.dart';
import 'package:bind_test/common/models/transaction.dart';
import 'package:bind_test/common/models/wallet.dart';

abstract class Plugs {
  // Кошелёк
  static const WalletModel wallet = WalletModel(
    image: 'lib/common/assets/images/flag.jpg',
    amount: 180970.83,
    currency: 'USD',
    symbol: '\$',
  );

  // Транзакции за день
  static final HistoryDayModel historyDayModel1 = HistoryDayModel(
    date: DateTime(2022, 6, 22),
    transactions: [
      TransactionModel(
        image: 'lib/common/assets/images/pret.jpg',
        name: 'Pret A Manger',
        time: DateTime(2022, 6, 22, 12, 23),
        amount: -55.31,
        symbol: '\$',
        currency: 'USD',
      ),
      TransactionModel(
        image: 'lib/common/assets/images/incoming_arrow.png',
        name: 'Darren Hodgkin',
        time: DateTime(2022, 6, 22, 12, 23),
        amount: 130.31,
        symbol: '\$',
        currency: 'USD',
      ),
      TransactionModel(
        image: 'lib/common/assets/images/mac.jpg',
        name: 'McDonalds',
        time: DateTime(2022, 6, 22, 12, 23),
        amount: -55.31,
        symbol: '\$',
        currency: 'USD',
      ),
      TransactionModel(
        image: 'lib/common/assets/images/starbucks.jpeg',
        name: 'Starbucks',
        time: DateTime(2022, 6, 22, 12, 23),
        amount: -55.31,
        symbol: '\$',
        currency: 'USD',
      ),
      TransactionModel(
        image: 'lib/common/assets/images/outgoing_arrow.png',
        name: 'Dave Winklevoss',
        time: DateTime(2022, 6, 22, 12, 23),
        amount: -300.00,
        symbol: '\$',
        currency: 'USD',
      ),
    ],
  );
  static final HistoryDayModel historyDayModel2 = HistoryDayModel(
    date: DateTime(2021, 12, 11),
    transactions: [
      TransactionModel(
        image: 'lib/common/assets/images/virqin.jpeg',
        name: 'Virgin Megastore',
        time: DateTime(2021, 12, 11, 12, 23),
        amount: -500.31,
        symbol: '\$',
        currency: 'USD',
      ),
      TransactionModel(
        image: 'lib/common/assets/images/nike.jpeg',
        name: 'Nike',
        time: DateTime(2021, 12, 11, 12, 23),
        amount: -500.31,
        symbol: '\$',
        currency: 'USD',
      ),
    ],
  );
  static final HistoryDayModel historyDayModel3 = HistoryDayModel(
    date: DateTime(2021, 12, 9),
    transactions: [
      TransactionModel(
        image: 'lib/common/assets/images/lv.jpeg',
        name: 'Louis Vuitton',
        time: DateTime(2021, 12, 9, 12, 23),
        amount: -500.31,
        symbol: '\$',
        currency: 'USD',
      ),
      TransactionModel(
        image: 'lib/common/assets/images/carrefour.jpeg',
        name: 'Carrefour',
        time: DateTime(2021, 12, 9, 12, 23),
        amount: -500.31,
        symbol: '\$',
        currency: 'USD',
      ),
    ],
  );

  // Все транзакции
  static final List<HistoryDayModel> transactions = [
    historyDayModel1,
    historyDayModel2,
    historyDayModel3,
  ];
}
