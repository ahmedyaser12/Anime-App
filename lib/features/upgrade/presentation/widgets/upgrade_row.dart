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
          right: 22,
          top: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              alignment: Alignment.center,
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: const Icon(Icons.close),
            ),
          ),
        ),
      ],
    );
  }
}
