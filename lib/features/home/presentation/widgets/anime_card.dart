import 'package:anime_live/core/utils/assets_manager.dart';
import 'package:anime_live/core/utils/spacing.dart';
import 'package:anime_live/core/utils/styles.dart';
import 'package:anime_live/features/details_screen/presentation/screens/anime_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';

class AnimeCard extends StatelessWidget {
  const AnimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/images/image1.png',
      'assets/images/image2.png',
      'assets/images/image3.png',
    ];
    List<String> animeName = [
      'Detective Conan',
      'Hunter x Hunter',
      'Dragon Ball Z',
    ];
    List<String> animeGenre = ['Mystery', 'Adventure', 'Action'];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          3,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        AnimeDetailsScreen(image: images[index]),
                  ),
                );
              },
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          images[index],
                          height: 245,
                          width: 184,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        right: 23,
                        top: 12,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.whiteBG,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset(AssetsManager.star, height: 12),
                              horizontalSpace(4),
                              Text(
                                '4.9',
                                style: Styles.font12Black2W800.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  verticalSpace(7),
                  Text(
                    animeName[index],
                    style: Styles.font24PurpleW700.copyWith(fontSize: 14),
                  ),
                  verticalSpace(4),
                  Text(animeGenre[index], style: Styles.font12greyLightW500),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
