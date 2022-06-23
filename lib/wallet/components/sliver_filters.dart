import 'package:bind_test/common/config/app_icons.dart';
import 'package:bind_test/common/styles/colors.dart';
import 'package:bind_test/common/styles/fonts.dart';
import 'package:bind_test/wallet/components/filter.dart';
import 'package:bind_test/wallet/components/transparent_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SliverFilters extends SliverPersistentHeaderDelegate {
  final double height;

  const SliverFilters({this.height = 226});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final double width = MediaQuery.of(context).size.width;
    final CustomColors colors = Theme.of(context).extension<CustomColors>()!;
    final CustomTextStyle textStyles =
        Theme.of(context).extension<CustomTextStyle>()!;
    return Container(
      width: width,
      color: colors.backgroundFilters,
      padding: const EdgeInsets.fromLTRB(16, 33, 16, 23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.transaction_history,
            style: textStyles.textR17.copyWith(
              color: colors.white,
            ),
          ),
          const SizedBox(height: 18),
          Filter(
            name: 'USD Dollar',
            onFilter: () {},
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: Filter(
                  name: 'All',
                  onFilter: () {},
                ),
              ),
              const SizedBox(width: 10),
              TransparentButton(
                padding: const EdgeInsets.all(17.5),
                onTap: () {},
                child: SvgPicture.asset(
                  AppIcons.calendar,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
