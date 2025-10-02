import 'package:anime_live/components/custom/switcher.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class TapSwitcher extends StatelessWidget {
  const TapSwitcher({
    required this.title,
    this.switcherDefaultValue = false,
    required this.onTap,
    super.key,
  });
  final String title;
  final bool switcherDefaultValue;
  final Function(bool)? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                color: AppColors.whiteBG,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          Switcher(switcherDefaultValue, currentState: onTap),
        ],
      ),
    );
  }
}
