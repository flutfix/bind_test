import 'package:bind_test/common/models/transaction.dart';
import 'package:bind_test/common/styles/colors.dart';
import 'package:bind_test/common/styles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Transaction extends StatelessWidget {
  final TransactionModel transaction;

  const Transaction({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final CustomColors colors = Theme.of(context).extension<CustomColors>()!;
    final CustomTextStyle textStyles =
        Theme.of(context).extension<CustomTextStyle>()!;

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 17, 16, 24),
      child: Row(
        children: [
          // Изображение
          ClipRRect(
            borderRadius: BorderRadius.circular(90),
            child: SizedBox(
              width: 30,
              height: 30,
              child: Image.asset(
                transaction.image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Название транзакции
                    SizedBox(
                      width: width - 210,
                      child: Text(
                        transaction.name,
                        style: textStyles.textR17.copyWith(
                          color: colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    // Сумма транзакции
                    Row(
                      children: [
                        if (transaction.amount < 0)
                          Text(
                            '- ',
                            style: textStyles.textR17.copyWith(
                              color: colors.black,
                            ),
                          ),
                        if (transaction.amount > 0)
                          Text(
                            '+ ',
                            style: textStyles.textR17.copyWith(
                              color: colors.black,
                            ),
                          ),
                        Text(
                          '${transaction.symbol}${transaction.amount.abs()} ${transaction.currency}',
                          style: textStyles.textR17.copyWith(
                            color: colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // Время транзакции
                Text(
                  DateFormat('HH:mm').format(transaction.time),
                  style: textStyles.textR13.copyWith(
                    color: colors.secondaryText,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
