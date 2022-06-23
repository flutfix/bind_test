import 'package:bind_test/common/config/plugs.dart';
import 'package:bind_test/common/styles/colors.dart';
import 'package:bind_test/common/styles/fonts.dart';
import 'package:bind_test/wallet/components/custom_app_bar.dart';
import 'package:bind_test/wallet/components/history_day.dart';
import 'package:bind_test/wallet/components/sliver_filters.dart';
import 'package:bind_test/wallet/components/transparent_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  late final NumberFormat numberFormat;

  @override
  void initState() {
    super.initState();
    numberFormat = NumberFormat.currency();
  }

  @override
  Widget build(BuildContext context) {
    final CustomColors colors = Theme.of(context).extension<CustomColors>()!;
    final CustomTextStyle textStyles =
        Theme.of(context).extension<CustomTextStyle>()!;

    return Scaffold(
      appBar: CustomAppBar(
        onBack: () {},
        onLink: () {},
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          // Информация о кошельке
          SliverAppBar(
            backgroundColor: colors.black,
            expandedHeight: 276.h,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: colors.black,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    children: [
                      const SizedBox(height: 49),
                      // Изображение
                      ClipRRect(
                        borderRadius: BorderRadius.circular(90),
                        child: SizedBox(
                          width: 70,
                          height: 70,
                          child: Image.asset(
                            Plugs.wallet.image,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Валюта
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Text(
                            '${Plugs.wallet.currency} '
                            '${AppLocalizations.of(context)!.account}',
                            style: textStyles.textR17.copyWith(
                              color: colors.secondaryText,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TransparentButton(
                              onTap: () {},
                              child: Text(
                                AppLocalizations.of(context)!.hide,
                                style: textStyles.textR13.copyWith(
                                  color: colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 21),

                      // Сумма
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            Plugs.wallet.symbol,
                            style: textStyles.textR13.copyWith(
                              color: colors.white,
                            ),
                          ),
                          const SizedBox(width: 21),
                          Text(
                            numberFormat
                                .format(Plugs.wallet.amount)
                                .substring(3),
                            style: textStyles.textR22.copyWith(
                              color: colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Фильтры
          const SliverPersistentHeader(
            delegate: SliverFilters(),
            pinned: true,
          ),

          // Отсортированный список транзакций
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, int index) {
                return ListView.builder(
                  itemCount: Plugs.transactions.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return HistoryDay(
                      historyDay: Plugs.transactions[index],
                    );
                  },
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
