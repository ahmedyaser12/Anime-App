import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class Switcher extends StatefulWidget {
  const Switcher(this.value, {this.currentState, super.key});

  final bool value;
  final Function(bool)? currentState;

  @override
  State<Switcher> createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher> {
  late bool switcherState = widget.value;

  @override
  Widget build(BuildContext context) {
    return SwitchTheme(
      data: SwitchThemeData(
        padding: EdgeInsets.zero,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        thumbColor: WidgetStateProperty.resolveWith<Color>((
          Set<WidgetState> states,
        ) {
          return Colors.white; // ✅ Thumb when active
        }),
        trackColor: WidgetStateProperty.resolveWith<Color>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.selected)) {
            return AppColors.primaryColor;
          }
          return Colors.grey.shade300;
        }),
      ),
      child: Transform.scale(
        scale: .80, // ✅ Shrinks the Switch size (height + width)
        child: Switch(
          value: switcherState,
          onChanged: (newValue) {
            setState(() {
              switcherState = newValue;
            });
            widget.currentState?.call(newValue);
          },
          inactiveThumbColor: AppColors.black,
        ),
      ),
    );
  }
}
