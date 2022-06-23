import 'package:bind_test/common/config/app_icons.dart';
import 'package:bind_test/common/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final double height;
  final EdgeInsetsGeometry padding;
  final Color? color;
  final Function()? onBack;
  final Function()? onLink;

  const CustomAppBar({
    Key? key,
    this.height = 64,
    this.padding = const EdgeInsets.all(16),
    this.color,
    this.onBack,
    this.onLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CustomColors colors = Theme.of(context).extension<CustomColors>()!;

    return Container(
      color: color ?? colors.black,
      child: SafeArea(
        child: Padding(
          padding: padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: onBack,
                child: SvgPicture.asset(
                  AppIcons.arrowBack,
                  color: colors.white,
                ),
              ),
              GestureDetector(
                onTap: onLink,
                child: SvgPicture.asset(
                  AppIcons.link,
                  color: colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
