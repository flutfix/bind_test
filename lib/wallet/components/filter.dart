import 'package:bind_test/common/config/app_icons.dart';
import 'package:bind_test/common/styles/colors.dart';
import 'package:bind_test/common/styles/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Filter extends StatefulWidget {
  final String name;
  final Function? onFilter;

  const Filter({
    Key? key,
    required this.name,
    this.onFilter,
  }) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    final CustomColors colors = Theme.of(context).extension<CustomColors>()!;
    final CustomTextStyle textStyles =
        Theme.of(context).extension<CustomTextStyle>()!;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: colors.border),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(14),
      child: GestureDetector(
        onTap: () {
          if (widget.onFilter != null) {
            widget.onFilter!();
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.name,
              style: textStyles.textR17.copyWith(
                color: colors.white,
              ),
            ),
            SvgPicture.asset(
              AppIcons.arrowBottom,
              color: colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
