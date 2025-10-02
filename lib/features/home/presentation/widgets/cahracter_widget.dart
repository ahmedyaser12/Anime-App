import 'package:anime_live/core/utils/spacing.dart';
import 'package:anime_live/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';

class CahracterWidget extends StatelessWidget {
  const CahracterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> charactersName = [
      'Gon Freecss',
      'Naruto Uzumaki',
      'Luffy',
      'Conan Edogawa',
    ];
    List<String> charactersAnime = [
      'Hunter x Hunter',
      'Naruto',
      'One Piece',
      'Detective Conan',
    ];
    List<String> images = [
      'assets/images/character1.png',
      'assets/images/character2.png',
      'assets/images/character3.png',
      'assets/images/character4.png',
    ];
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            4,
            (index) => Column(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(images[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                verticalSpace(10),
                Text(
                  charactersName[index],
                  style: Styles.font24PurpleW700.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                verticalSpace(4),
                Text(
                  charactersAnime[index],
                  style: Styles.font12greyLightW500.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
