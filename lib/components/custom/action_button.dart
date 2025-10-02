import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final Function()? onPressed;
  final String? text;
  final Widget? textWidget;
  final Color? textColor, bgColor;
  final Color borderColor;
  final double? textFontSize;
  final double? height;
  final double borderRadius, borderThickness;
  final bool isLoading;
  final FontWeight fontWeight;
  final Widget icon;
  final bool showRightIcon;
  final bool showLeftIcon;

  const ActionButton({
    super.key,
    this.onPressed,
    this.text,
    this.isLoading = false,
    this.textColor,
    this.textFontSize = 18,
    this.bgColor,
    this.borderRadius = 0,
    this.borderThickness = 1,
    this.borderColor = Colors.transparent,
    this.showLeftIcon = false,
    this.showRightIcon = false,
    this.icon = const SizedBox.shrink(),
    this.fontWeight = FontWeight.w500,
    this.height,
    this.textWidget,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, height ?? 50),
        backgroundColor: bgColor,
        foregroundColor: bgColor,
        elevation: 0,
        side: BorderSide(color: borderColor, width: borderThickness),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        shadowColor: Colors.transparent,
        overlayColor: Colors.transparent,
        padding: const EdgeInsets.all(0),
      ),
      child: isLoading
          ? const Center(
              child: SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator.adaptive(strokeWidth: 2.5),
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: showRightIcon,
                  replacement: SizedBox(
                    width: showRightIcon || showLeftIcon ? 10 : 0,
                  ),
                  child: icon,
                ),
                Flexible(
                  flex: 0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: showRightIcon || showLeftIcon ? 5 : 0,
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child:
                          textWidget ??
                          Text(
                            text ?? '',
                            style: TextStyle(
                              color: textColor,
                              fontWeight: fontWeight,
                              fontSize: textFontSize,
                            ),
                            textAlign: !showRightIcon && !showLeftIcon
                                ? null
                                : TextAlign.center,
                          ),
                    ),
                  ),
                ),
                Visibility(
                  visible: showLeftIcon,
                  replacement: SizedBox(
                    width: showRightIcon || showLeftIcon ? 10 : 0,
                  ),
                  child: icon,
                ),
              ],
            ),
    );
  }
}
