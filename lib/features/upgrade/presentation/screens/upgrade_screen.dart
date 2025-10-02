import 'package:anime_live/core/utils/app_colors.dart';
import 'package:anime_live/core/utils/spacing.dart';
import 'package:anime_live/core/utils/styles.dart';
import 'package:anime_live/features/upgrade/presentation/widgets/subscribe_buttons.dart';
import 'package:anime_live/features/upgrade/presentation/widgets/upgrade_row.dart';
import 'package:flutter/material.dart';

class UpgradeScreen extends StatelessWidget {
  const UpgradeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Upgrade plan.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),

          Column(
            children: [
              const UpgradeRow(),
              verticalSpace(9),

              Image.asset('assets/images/Rocket Boy 1.svg', fit: BoxFit.fill),
              verticalSpace(4),
              Text(
                'Seamless Anime\n Experience, Ad-Free.',
                style: Styles.font14PrimaryW700.copyWith(fontSize: 24),
              ),
              verticalSpace(4),
              Text(
                'Enjoy unlimited anime streaming without\n interruptions.',
                style: Styles.font12greyLightW500.copyWith(fontSize: 14),
              ),
              verticalSpace(40),
              SubscriptionPlans(),
              verticalSpace(40),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    'Continue',
                    style: Styles.font14WhiteW800.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
