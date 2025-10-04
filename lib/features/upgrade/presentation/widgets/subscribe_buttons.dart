import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/spacing.dart';
import '../../../../core/utils/styles.dart';

class SubscribeButtons extends StatefulWidget {
  const SubscribeButtons({super.key});

  @override
  State<SubscribeButtons> createState() => _SubscribeButtonsState();
}

class _SubscribeButtonsState extends State<SubscribeButtons> {
  String selectedPlan = 'annually'; // default selected

  Widget buildPlanOption({
    required String title,
    required String price,
    required String duration,
    required String planKey,
  }) {
    final isSelected = selectedPlan == planKey;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPlan = planKey;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.secondary
              : Colors.white, // ✅ white if not selected
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? AppColors.primaryColor : AppColors.whiteBG,
            width: 2,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/upgrade_icon.png', height: 105),
            horizontalSpace(22),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 14,
                right: 14,
                bottom: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Styles.font14WhiteW800.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: isSelected
                          ? Colors.white
                          : Colors.black, // ✅ text turns black if not selected
                    ),
                  ),
                  const SizedBox(height: 4),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: price,
                          style: Styles.font14WhiteW800.copyWith(
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: ' /$duration',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.purple,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Include Family Sharing',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: AppColors.purple,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primaryColor : Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? AppColors.primaryColor : AppColors.black,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? const Icon(
                      Icons.check,
                      color: AppColors.secondary,
                      size: 20,
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildPlanOption(
          title: 'Monthly',
          price: '\$5 USD',
          duration: 'Month',
          planKey: 'monthly',
        ),
        buildPlanOption(
          title: 'Annually',
          price: '\$50 USD',
          duration: 'Year',
          planKey: 'annually',
        ),
      ],
    );
  }
}
