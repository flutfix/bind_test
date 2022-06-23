import 'package:bind_test/common/models/history_day.dart';
import 'package:bind_test/common/styles/colors.dart';
import 'package:bind_test/common/styles/fonts.dart';
import 'package:bind_test/common/utils/converter.dart';
import 'package:bind_test/wallet/components/transaction.dart';
import 'package:flutter/material.dart';

class HistoryDay extends StatelessWidget {
  final HistoryDayModel historyDay;

  const HistoryDay({
    Key? key,
    required this.historyDay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final CustomColors colors = Theme.of(context).extension<CustomColors>()!;
    final CustomTextStyle textStyles =
        Theme.of(context).extension<CustomTextStyle>()!;

    return Column(
      children: [
        Container(
          width: width,
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 24),
          color: colors.backgroundHeaders,
          child: Text(
            Converter.shortenDay(
              context: context,
              date: historyDay.date,
            ),
            style: textStyles.textR17.copyWith(
              color: colors.black,
            ),
          ),
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: historyDay.transactions.length,
          separatorBuilder: (context, index) {
            return Container(
              height: 1,
              width: width,
              color: colors.border,
            );
          },
          itemBuilder: (context, index) {
            return Transaction(
              transaction: historyDay.transactions[index],
            );
          },
        ),
      ],
    );
  }
}
