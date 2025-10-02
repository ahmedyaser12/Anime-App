import 'package:flutter/material.dart';

class SubscriptionPlans extends StatefulWidget {
  const SubscriptionPlans({Key? key}) : super(key: key);

  @override
  State<SubscriptionPlans> createState() => _SubscriptionPlansState();
}

class _SubscriptionPlansState extends State<SubscriptionPlans> {
  String selectedPlan = 'monthly';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Monthly Plan
        GestureDetector(
          onTap: () {
            setState(() {
              selectedPlan = 'monthly';
            });
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: selectedPlan == 'monthly'
                  ? Color(0xFF1A0B2E)
                  : Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: selectedPlan == 'monthly'
                    ? Color(0xFF7C3AED)
                    : Color(0xFFE5E7EB),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                // Icon
                Container(
                  width: 80,
                  height: 80,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.play_arrow,
                            size: 40,
                            color: Color(0xFF7C3AED),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Color(0xFF7C3AED).withOpacity(0.3),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                // Text content
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Monthly',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: selectedPlan == 'monthly'
                              ? Colors.white
                              : Color(0xFF1A0B2E),
                        ),
                      ),
                      const SizedBox(height: 4),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '\$5 USD',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: selectedPlan == 'monthly'
                                    ? Colors.white
                                    : Color(0xFF1A0B2E),
                              ),
                            ),
                            TextSpan(
                              text: ' /Month',
                              style: TextStyle(
                                fontSize: 18,
                                color: selectedPlan == 'monthly'
                                    ? Colors.white.withOpacity(0.6)
                                    : Color(0xFF9CA3AF),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Include Family Sharing',
                        style: TextStyle(
                          fontSize: 14,
                          color: selectedPlan == 'monthly'
                              ? Color(0xFFA78BFA)
                              : Color(0xFF9CA3AF),
                        ),
                      ),
                    ],
                  ),
                ),
                // Checkmark
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: selectedPlan == 'monthly'
                        ? Color(0xFF7C3AED)
                        : Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: selectedPlan == 'monthly'
                          ? Color(0xFF7C3AED)
                          : Color(0xFFD1D5DB),
                      width: 2,
                    ),
                  ),
                  child: selectedPlan == 'monthly'
                      ? Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 20,
                        )
                      : null,
                ),
              ],
            ),
          ),
        ),
        // Annual Plan
        GestureDetector(
          onTap: () {
            setState(() {
              selectedPlan = 'annually';
            });
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: selectedPlan == 'annually'
                  ? Color(0xFF1A0B2E)
                  : Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: selectedPlan == 'annually'
                    ? Color(0xFF7C3AED)
                    : Color(0xFFE5E7EB),
                width: 2,
              ),
            ),
            child: Row(
              children: [
                // Icon
                Container(
                  width: 80,
                  height: 80,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.play_arrow,
                            size: 40,
                            color: Color(0xFF7C3AED),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10,
                        top: 10,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Color(0xFF7C3AED).withOpacity(0.3),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                // Text content
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Annually',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: selectedPlan == 'annually'
                              ? Colors.white
                              : Color(0xFF1A0B2E),
                        ),
                      ),
                      const SizedBox(height: 4),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '\$50 USD',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: selectedPlan == 'annually'
                                    ? Colors.white
                                    : Color(0xFF1A0B2E),
                              ),
                            ),
                            TextSpan(
                              text: ' /Year',
                              style: TextStyle(
                                fontSize: 18,
                                color: selectedPlan == 'annually'
                                    ? Colors.white.withOpacity(0.6)
                                    : Color(0xFF9CA3AF),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Include Family Sharing',
                        style: TextStyle(
                          fontSize: 14,
                          color: selectedPlan == 'annually'
                              ? Color(0xFFA78BFA)
                              : Color(0xFF9CA3AF),
                        ),
                      ),
                    ],
                  ),
                ),
                // Checkmark
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: selectedPlan == 'annually'
                        ? Color(0xFF7C3AED)
                        : Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: selectedPlan == 'annually'
                          ? Color(0xFF7C3AED)
                          : Color(0xFFD1D5DB),
                      width: 2,
                    ),
                  ),
                  child: selectedPlan == 'annually'
                      ? Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 20,
                        )
                      : null,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}