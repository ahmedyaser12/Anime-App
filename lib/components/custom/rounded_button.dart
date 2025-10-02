import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class RoundedButton extends StatelessWidget {
  final Function()? onTap;
  final Color bgColor;
  final Color borderColor;
  final double? textFontSize;
  final double borderRadius, borderThickness;
  final double buttonSize;
  final Widget child;
  const RoundedButton({
    super.key,
    this.onTap,
    required this.child,
    this.buttonSize = 40,
    this.textFontSize = 18,
    this.bgColor = AppColors.whiteBG,
    this.borderRadius = 0,
    this.borderThickness = 1,
    this.borderColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: buttonSize,
        height: buttonSize,
        decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle,
          border: Border.all(color: borderColor, width: borderThickness),
        ),
        child: child,
      ),
    );
  }
}
