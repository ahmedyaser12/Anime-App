import 'package:anime_live/core/utils/app_colors.dart';
import 'package:anime_live/core/utils/assets_manager.dart';
import 'package:anime_live/core/utils/styles.dart';
import 'package:anime_live/features/upgrade/presentation/screens/upgrade_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AnimeDetailsScreen extends StatelessWidget {
  final String image;
  const AnimeDetailsScreen({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/Details Screen.png',
              fit: BoxFit.cover,
            ),
          ),

          // Content
          SingleChildScrollView(
            child: Column(
              children: [
                // Top anime image with height 512
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      image,
                      height: 512,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),

                    Positioned(
                      bottom: -70, // Half of the SVG height extends outside
                      child: SvgPicture.asset(
                        AssetsManager.demon,
                        height: 140, // Adjust based on your SVG size
                        width: 140,
                      ),
                    ),
                  ],
                ),

                // Vertical space 76
                const SizedBox(height: 76),

                // Three horizontal buttons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Row(
                    children: [
                      Expanded(child: _buildGenreButton('Dark Fantasy')),
                      const SizedBox(width: 10),
                      Expanded(child: _buildGenreButton('Action')),
                      const SizedBox(width: 10),
                      Expanded(child: _buildGenreButton('Adventure')),
                    ],
                  ),
                ),

                // Vertical space 23
                const SizedBox(height: 23),

                // Divider with horizontal padding 21
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21),
                  child: Divider(
                    color: AppColors.grey1.withAlpha(100),
                    thickness: 1,
                  ),
                ),

                // Stats section
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: _buildStat(AssetsManager.eye, '2.3M views'),
                      ),
                      Expanded(child: _buildStat(AssetsManager.clapping, '2K')),
                      Expanded(
                        child: _buildStat(AssetsManager.video, '4 Seasons'),
                      ),
                    ],
                  ),
                ),
                // Divider with horizontal padding 21
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21),
                  child: Divider(
                    color: AppColors.grey1.withAlpha(100),
                    thickness: 1,
                  ),
                ),

                // Description
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(AssetsManager.vector),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Demon Slayer: Kimetsu no Yaiba follows\nTanjiro, a kind-hearted boy who becomes\n a demon slayer after his family\n is slaughtered and his sister is \nturned into a demon. Experience breathtaking\n battles, stunning animation, and an emotional\n journey of courage and hope.',
                          style: Styles.font14WhiteW800.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 100), // Space for floating buttons
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        color: AppColors.secondary,
        child: Row(
          children: [
            Expanded(
              child: FloatingActionButton.extended(
                shape: const StadiumBorder(),
                extendedPadding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 12,
                ),
                onPressed: () {},
                heroTag: 'preview',
                backgroundColor: AppColors.grey1.withAlpha(100),
                icon: SvgPicture.asset(AssetsManager.previewIcon),
                label: Text(
                  'preview',
                  style: Styles.font14WhiteW800.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: FloatingActionButton.extended(
                shape: const StadiumBorder(),
                extendedPadding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 12,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UpgradeScreen(),
                    ),
                  );
                },
                heroTag: 'Watch Now',
                backgroundColor: AppColors.primaryColor,
                icon: SvgPicture.asset(
                  AssetsManager.eye,
                  color: Colors.white,
                  height: 20,
                ),
                label: Text(
                  'Watch Now',
                  style: Styles.font14WhiteW800.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildGenreButton(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.grey1.withAlpha(100),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Center(
        child: Text(
          label,
          style: Styles.font14WhiteW800.copyWith(
            fontSize: 11,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildStat(String icon, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(icon),
        const SizedBox(width: 2),
        Text(
          text,
          style: Styles.font14WhiteW800.copyWith(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
