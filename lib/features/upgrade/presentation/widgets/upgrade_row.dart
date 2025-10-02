import 'package:anime_live/core/utils/styles.dart';
import 'package:flutter/material.dart';

class UpgradeRow extends StatelessWidget {
  const UpgradeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Centered text
        Center(
          child: Text(
            "Upgrade plan",
            style: Styles.font14PrimaryW700.copyWith(fontSize: 22),
          ),
        ),
        // X icon on the right
        Positioned(
          right: 0,
          top: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF8B5CF6), width: 2),
              borderRadius: BorderRadius.circular(4),
            ),
            child: IconButton(
              icon: Icon(Icons.close),
              color: Color(0xFF8B5CF6),
              onPressed: () {
                // Handle close action
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}
