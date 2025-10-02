import 'package:anime_live/core/utils/app_colors.dart';
import 'package:anime_live/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      'All',
      'Popular',
      'Trending',
      'New Release',
      'Upcoming',
      'Top Airing',
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          6,
          (index) => Container(
            alignment: Alignment.center,

            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            margin: const EdgeInsets.only(right: 4),
            // width: 10,
            // height: 10,
            decoration: BoxDecoration(
              color: index == 0 ? AppColors.primaryColor : AppColors.whiteBG,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                list[index],
                style: Styles.font14PrimaryW700.copyWith(
                  color: index == 0
                      ? AppColors.whiteBG
                      : AppColors.primaryColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
