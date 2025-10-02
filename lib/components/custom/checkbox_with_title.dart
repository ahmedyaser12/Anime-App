import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class CheckBoxWithTitle extends StatefulWidget {
  final bool defaultValue;
  final String labelText;
  final Color? titleColor;
  final bool? isRoundedBox;
  final Function(bool) onChanged;
  const CheckBoxWithTitle({
    required this.defaultValue,
    required this.onChanged,
    required this.labelText,
    this.isRoundedBox = true,
    this.titleColor,
    super.key,
  });

  @override
  State<CheckBoxWithTitle> createState() => _CheckBoxWithTitleState();
}

class _CheckBoxWithTitleState extends State<CheckBoxWithTitle> {
  late bool checked = widget.defaultValue;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          checked = !checked;
        });
        widget.onChanged(checked);
      },
      child: Container(
        color: Colors.transparent,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(width: 2),
            Container(
              height: 17,
              width: 17,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  widget.isRoundedBox! ? 4 : 0,
                ),
              ),
              child: Checkbox(
                side: const BorderSide(width: 0.8),
                checkColor: Colors.white,
                activeColor: AppColors.primaryColor,
                value: checked,
                onChanged: (value) {
                  setState(() {
                    checked = value ?? false;
                  });
                  widget.onChanged(checked);
                },
              ),
            ),
            const SizedBox(width: 10),
            Flexible(child: Text(widget.labelText)),
          ],
        ),
      ),
    );
  }
}
