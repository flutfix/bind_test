import 'package:bind_test/common/styles/colors.dart';
import 'package:flutter/material.dart';

class TransparentButton extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final Function()? onTap;

  const TransparentButton({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 13,
      vertical: 10,
    ),
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CustomColors colors = Theme.of(context).extension<CustomColors>()!;

    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: colors.border),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
